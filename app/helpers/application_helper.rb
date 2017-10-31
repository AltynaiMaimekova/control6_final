module ApplicationHelper
  def average_score(post)
    sum = 0
    post.comments.each do |comment|
      sum = sum + comment.score
    end
    average_score = sum / post.comments.length
  end
end
