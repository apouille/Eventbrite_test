class EventValidator < ActiveModel::Validator

  def validate(record)
	  cannot_create_event_in_the_past(record)
	  duration_should_be_multiple_of_five(record)
  end

  private

  def cannot_create_event_in_the_past(record)
  	return unless record.start_date
    record.errors[:start_date] << "cannot create event in the past" if record.start_date < Time.now
  end

  def duration_should_be_multiple_of_five(record)
  	return unless record.duration
  	record.errors[:duration] << "duration should be multiple of 5" unless record.duration % 5 == 0
  end

end