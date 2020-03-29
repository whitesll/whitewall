module ApplicationHelper

  def comment_change(comment_count)
    if comment_count >= 4
      "comment4"
    elsif comment_count >= 3
      "comment3"
    elsif comment_count >= 2
      "comment2"
    elsif comment_count >= 1
      "comment1"
    else
      "comment0"
    end
  end

  def videocomment_change(comment_count)
    if comment_count >= 4
      "comment4"
    elsif comment_count >= 3
      "comment3"
    elsif comment_count >= 2
      "comment2"
    elsif comment_count >= 1
      "comment1"
    else
      "comment0"
    end
  end

end
