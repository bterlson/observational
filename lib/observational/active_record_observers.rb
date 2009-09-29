module Observational
  module ActiveRecordObservers
    def run_callbacks(kind, options = {}, &block)
      self.send(:notify_observers, kind)
      super
    end
  end
end
