class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def formated_birthdate
    return if birthdate.nil?
    birthdate.strftime("%Y-%m_%d")
  end

  def avg_notes(subject_item)
    notes = subject_item.subject_item_notes
    return '0.00' if notes.empty?
    sprintf('%.2f', notes.sum(:value).to_f / notes.size)
  end
end
