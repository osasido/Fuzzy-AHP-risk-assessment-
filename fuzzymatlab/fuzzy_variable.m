% Define the linguistic terms and their associated fuzzy numbers
linguistic_terms = ["Extremely Influential (9)", "Very Influential (7)", "Essentially Influential (5)", "Moderate Influential (3)", "Slightly Influential (1)"];
fuzzy_numbers = [
    7, 9, 9
    5, 7, 9
    3, 5, 7
    1, 3, 5
    1, 1, 1];

% Create a range of values within the fuzzy numbers' range
x = linspace(1, 9, 10000);

% Plot the membership functions for each linguistic term
figure;
hold on;

for i = 1:numel(linguistic_terms)
    term = linguistic_terms(i);
    fuzzy_number = fuzzy_numbers(i, :);
    
    % Calculate the membership function values
    mu = trimf(x, fuzzy_number);
    
    % Plot the membership function
    plot(x, mu, 'LineWidth', 2, 'DisplayName', term);
end

hold off;

% Add labels and legend
xlabel('Value');
ylabel('Degree of Membership');
title('Membership Functions for Linguistic Scaling Variables');
legend('Location', 'Best');
