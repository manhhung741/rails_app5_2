# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/puma/all/puma.rbi
#
# puma-4.0.0
module Puma
  def self.jruby?; end
  def self.stats; end
  def self.stats_object=(val); end
  def self.windows?; end
end
module Puma::Rack
end
class Puma::Rack::Options
  def handler_opts(options); end
  def parse!(args); end
end
class Puma::Rack::Builder
  def call(env); end
  def generate_map(default_app, mapping); end
  def initialize(default_app = nil, &block); end
  def map(path, &block); end
  def run(app); end
  def self.app(default_app = nil, &block); end
  def self.new_from_string(builder_script, file = nil); end
  def self.parse_file(config, opts = nil); end
  def to_app; end
  def use(middleware, *args, &block); end
  def warmup(prc = nil, &block); end
end
class Puma::UnknownPlugin < RuntimeError
end
class Puma::PluginLoader
  def create(name); end
  def fire_starts(launcher); end
  def initialize; end
end
class Puma::PluginRegistry
  def add_background(blk); end
  def find(name); end
  def fire_background; end
  def initialize; end
  def register(name, cls); end
end
class Puma::Plugin
  def in_background(&blk); end
  def initialize(loader); end
  def self.create(&blk); end
  def self.extract_name(ary); end
  def workers_supported?; end
end
class Puma::UnsupportedOption < RuntimeError
end
module Puma::Const
end
class Puma::DSL
  def _load_from(path); end
  def _offer_plugins; end
  def activate_control_app(url = nil, opts = nil); end
  def after_worker_boot(&block); end
  def after_worker_fork(&block); end
  def app(obj = nil, &block); end
  def before_fork(&block); end
  def bind(url); end
  def clean_thread_locals(which = nil); end
  def clear_binds!; end
  def daemonize(which = nil); end
  def debug; end
  def default_host; end
  def directory(dir); end
  def drain_on_shutdown(which = nil); end
  def early_hints(answer = nil); end
  def environment(environment); end
  def first_data_timeout(seconds); end
  def force_shutdown_after(val = nil); end
  def get(key, default = nil); end
  def initialize(options, config); end
  def inject(&blk); end
  def load(file); end
  def log_requests(which = nil); end
  def lowlevel_error_handler(obj = nil, &block); end
  def on_restart(&block); end
  def on_worker_boot(&block); end
  def on_worker_fork(&block); end
  def on_worker_shutdown(&block); end
  def out_of_band(&block); end
  def persistent_timeout(seconds); end
  def pidfile(path); end
  def plugin(name); end
  def port(port, host = nil); end
  def preload_app!(answer = nil); end
  def prune_bundler(answer = nil); end
  def queue_requests(answer = nil); end
  def quiet(which = nil); end
  def rackup(path); end
  def raise_exception_on_sigterm(answer = nil); end
  def restart_command(cmd); end
  def set_default_host(host); end
  def set_remote_address(val = nil); end
  def shutdown_debug(val = nil); end
  def ssl_bind(host, port, opts); end
  def state_path(path); end
  def stdout_redirect(stdout = nil, stderr = nil, append = nil); end
  def tag(string); end
  def tcp_mode!; end
  def tcp_mode; end
  def threads(min, max); end
  def worker_boot_timeout(timeout); end
  def worker_directory(dir); end
  def worker_shutdown_timeout(timeout); end
  def worker_timeout(timeout); end
  def workers(count); end
  include Puma::ConfigDefault
end
module Puma::ConfigDefault
end
class Puma::UserFileDefaultOptions
  def [](key); end
  def []=(key, value); end
  def all_of(key); end
  def default_options; end
  def fetch(key, default_value = nil); end
  def file_options; end
  def finalize_values; end
  def initialize(user_options, default_options); end
  def user_options; end
end
class Puma::Configuration
  def app; end
  def app_configured?; end
  def clamp; end
  def config_files; end
  def configure; end
  def environment; end
  def environment_str; end
  def flatten!; end
  def flatten; end
  def infer_tag; end
  def initialize(user_options = nil, default_options = nil, &block); end
  def initialize_copy(other); end
  def load; end
  def load_plugin(name); end
  def load_rackup; end
  def options; end
  def plugins; end
  def puma_default_options; end
  def rack_builder; end
  def rackup; end
  def run_hooks(key, arg); end
  def self.random_token; end
  def self.temp_path; end
  include Puma::ConfigDefault
end
class Puma::Configuration::ConfigMiddleware
  def call(env); end
  def initialize(config, app); end
end
class Puma::NullIO
  def close; end
  def each; end
  def eof?; end
  def gets; end
  def puts(*ary); end
  def read(count = nil, _buffer = nil); end
  def rewind; end
  def size; end
  def sync=(v); end
  def write(*ary); end
end
class Puma::Events
  def debug(str); end
  def error(str); end
  def fire(hook, *args); end
  def fire_on_booted!; end
  def format(str); end
  def formatter; end
  def formatter=(arg0); end
  def initialize(stdout, stderr); end
  def log(str); end
  def on_booted(&block); end
  def parse_error(server, env, error); end
  def register(hook, obj = nil, &blk); end
  def self.null; end
  def self.stdio; end
  def self.strings; end
  def ssl_error(server, peeraddr, peercert, error); end
  def stderr; end
  def stdout; end
  def unknown_error(server, error, kind = nil, env = nil); end
  def write(str); end
  include Puma::Const
end
class Puma::Events::DefaultFormatter
  def call(str); end
end
class Puma::Events::PidFormatter
  def call(str); end
end
class Puma::ThreadPool
  def <<(work); end
  def auto_reap!(timeout = nil); end
  def auto_trim!(timeout = nil); end
  def backlog; end
  def clean_thread_locals; end
  def clean_thread_locals=(arg0); end
  def initialize(min, max, *extra, &block); end
  def pool_capacity; end
  def reap; end
  def self.clean_thread_locals; end
  def shutdown(timeout = nil); end
  def spawn_thread; end
  def spawned; end
  def trim(force = nil); end
  def trim_requested; end
  def wait_until_not_full; end
  def waiting; end
end
class Puma::ThreadPool::ForceShutdown < RuntimeError
end
class Puma::ThreadPool::AutoTrim
  def initialize(pool, timeout); end
  def start!; end
  def stop; end
end
class Puma::ThreadPool::Reaper
  def initialize(pool, timeout); end
  def start!; end
  def stop; end
end
module Puma::Util
  def parse_query(qs, d = nil, &unescaper); end
  def pipe; end
  def self.parse_query(qs, d = nil, &unescaper); end
  def self.pipe; end
  def self.unescape(s, encoding = nil); end
  def unescape(s, encoding = nil); end
end
class Puma::Util::HeaderHash < Hash
  def [](k); end
  def []=(k, v); end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def initialize(hash = nil); end
  def key?(k); end
  def member?(k); end
  def merge!(other); end
  def merge(other); end
  def replace(other); end
  def self.new(hash = nil); end
  def to_hash; end
end
module Puma::MiniSSL
  def self.check; end
end
class Puma::MiniSSL::Socket
  def <<(data); end
  def close; end
  def closed?; end
  def engine_read_all; end
  def flush; end
  def initialize(socket, engine); end
  def peeraddr; end
  def peercert; end
  def read_and_drop(timeout = nil); end
  def read_nonblock(size, *_); end
  def readpartial(size); end
  def should_drop_bytes?; end
  def syswrite(data); end
  def to_io; end
  def write(data); end
  def write_nonblock(data, *_); end
end
class Puma::MiniSSL::Context
  def ca; end
  def ca=(ca); end
  def cert; end
  def cert=(cert); end
  def check; end
  def initialize; end
  def key; end
  def key=(key); end
  def no_tlsv1; end
  def no_tlsv1=(tlsv1); end
  def ssl_cipher_filter; end
  def ssl_cipher_filter=(arg0); end
  def verify_mode; end
  def verify_mode=(arg0); end
end
class Puma::MiniSSL::Server
  def accept; end
  def accept_nonblock; end
  def close; end
  def initialize(socket, ctx); end
  def to_io; end
end
class Puma::Reactor
  def add(c); end
  def calculate_sleep; end
  def clear!; end
  def clear_monitor(mon); end
  def initialize(server, app_pool); end
  def run; end
  def run_in_thread; end
  def run_internal; end
  def shutdown; end
end
module Puma::Delegation
  def forward(what, who); end
end
class IO
end
module IO::WaitReadable
end
class Puma::ConnectionError < RuntimeError
end
class Puma::Client
  def body; end
  def call; end
  def close; end
  def closed?(*args, &block); end
  def decode_chunk(chunk); end
  def eagerly_finish; end
  def env; end
  def finish; end
  def hijacked; end
  def in_data_phase; end
  def initialize(io, env = nil); end
  def inspect; end
  def io; end
  def peerip; end
  def peerip=(arg0); end
  def read_body; end
  def read_chunked_body; end
  def ready; end
  def remote_addr_header; end
  def remote_addr_header=(arg0); end
  def reset(fast_check = nil); end
  def set_ready; end
  def set_timeout(val); end
  def setup_body; end
  def setup_chunked_body(body); end
  def tempfile; end
  def timeout_at; end
  def to_io; end
  def try_to_finish; end
  def write_400; end
  def write_408; end
  def write_500; end
  extend Puma::Delegation
  include Puma::Const
end
class Puma::Binder
  def add_ssl_listener(host, port, ctx, optimize_for_latency = nil, backlog = nil); end
  def add_tcp_listener(host, port, optimize_for_latency = nil, backlog = nil); end
  def add_unix_listener(path, umask = nil, mode = nil, backlog = nil); end
  def close; end
  def connected_port; end
  def env(sock); end
  def import_from_env; end
  def inherit_ssl_listener(fd, ctx); end
  def inherit_tcp_listener(host, port, fd); end
  def inherit_unix_listener(path, fd); end
  def initialize(events); end
  def ios; end
  def listeners; end
  def loopback_addresses; end
  def parse(binds, logger); end
  include Puma::Const
end
module OpenSSL
end
module OpenSSL::SSL
end
class OpenSSL::SSL::SSLServer
  def accept_nonblock; end
end
class Puma::HttpParser
  def body; end
  def error?; end
  def execute(arg0, arg1, arg2); end
  def finish; end
  def finished?; end
  def initialize; end
  def nread; end
  def reset; end
end
class Puma::IOBuffer
  def <<(arg0); end
  def append(*arg0); end
  def capacity; end
  def reset; end
  def to_s; end
  def to_str; end
  def used; end
end
class Puma::MiniSSL::Engine
  def extract; end
  def init?; end
  def inject(arg0); end
  def peercert; end
  def read; end
  def self.client; end
  def self.server(arg0); end
  def shutdown; end
  def write(arg0); end
end
class Puma::Server
  def add_ssl_listener(*args, &block); end
  def add_tcp_listener(*args, &block); end
  def add_unix_listener(*args, &block); end
  def app; end
  def app=(arg0); end
  def auto_trim_time; end
  def auto_trim_time=(arg0); end
  def backlog; end
  def begin_restart; end
  def binder; end
  def binder=(arg0); end
  def closed_socket?(socket); end
  def connected_port(*args, &block); end
  def cork_socket(socket); end
  def default_server_port(env); end
  def early_hints; end
  def early_hints=(arg0); end
  def events; end
  def fast_write(io, str); end
  def fetch_status_code(status); end
  def first_data_timeout; end
  def first_data_timeout=(arg0); end
  def graceful_shutdown; end
  def halt(sync = nil); end
  def handle_check; end
  def handle_request(req, lines); end
  def handle_servers; end
  def handle_servers_lopez_mode; end
  def inherit_binder(bind); end
  def initialize(app, events = nil, options = nil); end
  def leak_stack_on_error; end
  def leak_stack_on_error=(arg0); end
  def lowlevel_error(e, env); end
  def max_threads; end
  def max_threads=(arg0); end
  def min_threads; end
  def min_threads=(arg0); end
  def normalize_env(env, client); end
  def notify_safely(message); end
  def persistent_timeout; end
  def persistent_timeout=(arg0); end
  def pool_capacity; end
  def process_client(client, buffer); end
  def read_body(env, client, body, cl); end
  def reaping_time; end
  def reaping_time=(arg0); end
  def run(background = nil); end
  def run_lopez_mode(background = nil); end
  def running; end
  def self.current; end
  def shutting_down?; end
  def stop(sync = nil); end
  def tcp_mode!; end
  def thread; end
  def uncork_socket(socket); end
  extend Puma::Delegation
  include Puma::Const
end
class Puma::Runner
  def app; end
  def before_restart; end
  def daemon?; end
  def debug(str); end
  def development?; end
  def error(str); end
  def initialize(cli, events); end
  def load_and_bind; end
  def log(str); end
  def output_header(mode); end
  def redirect_io; end
  def redirected_io?; end
  def ruby_engine; end
  def start_control; end
  def start_server; end
  def test?; end
end
class Puma::Cluster < Puma::Runner
  def all_workers_booted?; end
  def check_workers(force = nil); end
  def cull_workers; end
  def halt; end
  def initialize(cli, events); end
  def next_worker_index; end
  def phased_restart; end
  def preload?; end
  def redirect_io; end
  def reload_worker_directory; end
  def restart; end
  def run; end
  def setup_signals; end
  def spawn_workers; end
  def start_phased_restart; end
  def stats; end
  def stop; end
  def stop_blocked; end
  def stop_workers; end
  def wakeup!; end
  def worker(index, master); end
end
class Puma::Cluster::Worker
  def boot!; end
  def booted?; end
  def dead!; end
  def dead?; end
  def hup; end
  def index; end
  def initialize(idx, pid, phase, options); end
  def kill; end
  def last_checkin; end
  def last_status; end
  def phase; end
  def pid; end
  def ping!(status); end
  def ping_timeout?(which); end
  def signal; end
  def term; end
end
class Puma::Single < Puma::Runner
  def halt; end
  def jruby_daemon?; end
  def jruby_daemon_start; end
  def restart; end
  def run; end
  def stats; end
  def stop; end
  def stop_blocked; end
end
class Puma::Launcher
  def binder; end
  def close_binder_listeners; end
  def clustered?; end
  def config; end
  def connected_port; end
  def delete_pidfile; end
  def environment; end
  def events; end
  def generate_restart_data; end
  def graceful_stop; end
  def halt; end
  def initialize(conf, launcher_args = nil); end
  def log(str); end
  def options; end
  def phased_restart; end
  def prune_bundler; end
  def prune_bundler?; end
  def reload_worker_directory; end
  def restart!; end
  def restart; end
  def restart_args; end
  def restart_dir; end
  def run; end
  def set_process_title; end
  def set_rack_environment; end
  def setup_signals; end
  def stats; end
  def stop; end
  def title; end
  def unsupported(str); end
  def write_pid; end
  def write_state; end
end
