Rails.application.config.middleware.use OmniAuth::Builder do
   provider :twitter, "b2arbdXi2HBMiTEcLcwaYP5rY", "6ebz4H6v6bJqBOSKEyHVk2pUBqFJvEpwMG52wzSA2M9fZMsL18"
   { :authorize_params => {
   		:force_login => 'true'
   		}
   }
end