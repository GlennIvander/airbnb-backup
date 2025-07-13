class Listings::FileUploadsController < ApplicationController
  def create
    @file = ActiveStorage::Blob.find_signed(params[:file_upload][:blob_signed_in])
    respond_to do |format|
      format.turbo_stream { }
    end
  end
end
