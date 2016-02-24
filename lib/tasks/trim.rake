namespace :trim do

  desc 'Trim notifications beyond a threshold to keep from users with an operation pending'
  task :pending, [ :keep_count ] =>  :environment do |t, args|
    keep = Integer(args[:keep_count] || 1000)
    while user_id = TrimQueue.pop
      TrimNotificationsForUser.call(user_id: user_id,
                                    category: :all,
                                    keep: keep)
    end
  end
end
