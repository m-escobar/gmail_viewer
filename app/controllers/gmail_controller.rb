require "google/apis/gmail_v1"
require "googleauth"
require "googleauth/stores/file_token_store"
require "fileutils"

class GmailController < ApplicationController
    def index
        @oob_uri = "urn:ietf:wg:oauth:2.0:oob".freeze
        @application_name = "Gmail Viewer".freeze
        @credentials_path = "credentials.json".freeze
        # The file token.yaml stores the user's access and refresh tokens, and is
        # created automatically when the authorization flow completes for the first
        # time.
        @token_path = "token.yaml".freeze
        @scope= Google::Apis::GmailV1::AUTH_GMAIL_READONLY

        # Initialize the API
        @service = Google::Apis::GmailV1::GmailService.new
        @service.client_options.application_name = @application_name
        @service.authorization = authorize

        @user_id = "me"
    end
    ##
    # Ensure valid credentials, either by restoring from the saved credentials
    # files or intitiating an OAuth2 authorization. If authorization is required,
    # the user's default browser will be launched to approve the request.
    #
    # @return [Google::Auth::UserRefreshCredentials] OAuth2 credentials

    def show
        raise
        id = params[:id]
    end

    def authorize
        client_id = Google::Auth::ClientId.from_file @credentials_path
        token_store = Google::Auth::Stores::FileTokenStore.new file: @token_path
        authorizer = Google::Auth::UserAuthorizer.new client_id, @scope, token_store
        user_id = "default"
        credentials = authorizer.get_credentials user_id
        if credentials.nil?
        @url = authorizer.get_authorization_url base_url: @oob_uri
        # puts "Open the following URL in the browser and enter the " \
        #         "resulting code after authorization:\n" + url
        code = gets
        credentials = authorizer.get_and_store_credentials_from_code(
            user_id: user_id, code: code, base_url: @oob_uri
        )
        end
        credentials
    end
end
