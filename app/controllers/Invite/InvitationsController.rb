class InvitationsController < ApplicationController
    def new
      @invites = Invites.new
    end
  
    def create
      @invites = Invites.new(invites_params)
      if @invites.valid?
        @invites.enqueue
        redirect_to enqueued_invites_url
      else
        render :new
      end
    end
  
    def enqueued
    end
  
    private
    def invites_params
      params.require(:invites).permit(:email)
    end
  end