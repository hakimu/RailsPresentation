require 'new_relic/agent/method_tracer'

TasksController.class_eval do
	include ::NewRelic::Agent::MethodTracer

	add_method_tracer :index
end

PersonController.class_eval do
	include ::NewRelic::Agent::MethodTracer

	add_method_tracer :home
end