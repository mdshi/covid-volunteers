class WorkerForInvitation
    include Sidekiq::Worker
    def perform(invites_params)
      @invites = Invites.new(invites_params)
      @invites.perform
    end
  end