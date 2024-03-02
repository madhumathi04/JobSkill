# Use the official Ruby image
FROM ruby:3.1.2

# Set the working directory
WORKDIR /app

# Install a specific version of Bundler
RUN gem install bundler:2.3.6

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the Rails application
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]

