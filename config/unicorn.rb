worker_processes 2
#working_directory "/home/shogo"
# ソケット
listen  '/tmp/unicorn.sock'
pid     '/tmp/unicorn.pid'

# ログ
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])

timeout 30
preload_app true

before_fork do |server, worker|
 defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

 old_pid = "#{ server.config[:pid] }.oldbin"
 unless old_pid == server.pid
  begin
   Process.kill :QUIT, File.read(old_pid).to_i
   rescue Errno::ENOENT, Errno::ESRCH
  end
 end
end

after_fork do |server, worker|
 defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
