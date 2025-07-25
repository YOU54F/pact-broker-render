FROM registry.redhat.io/ubi9/ruby-33:latest
USER 0
ADD . ./
RUN yum install -y libyaml-devel
RUN bundle install

CMD bundle exec "rackup -P /tmp/rack.pid --host 0.0.0.0 --port 8080"