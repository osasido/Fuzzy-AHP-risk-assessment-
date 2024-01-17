+% Define the player names, strategy names, and weighted scores for both platforms
players = {'Company Developer', 'Users', 'Regulatory Bodies', 'Government'};
strategies = {'St1', 'St2', 'St3'};

% Weighted scores for X Platform
weighted_scores_x = [
    0.5439 0.1887 0.2674;
    0.1593 0.4597 0.3810;
    0.4929 0.2957 0.2114;
    0.3509 0.1270 0.5222
];

% Weighted scores for Meta Platform
weighted_scores_meta = [
    0.5082 0.1699 0.3220;
    0.1887 0.5439 0.2674;
    0.5326 0.3031 0.1643;
    0.5771 0.1464 0.2765
];

% Create a figure for the combined comparison
figure;

% Combine the weighted scores for both platforms
combined_scores = cat(3, weighted_scores_x, weighted_scores_meta);

% Create a multiline bar graph for the combined scores
h = bar(combined_scores, 'grouped');

% Customize the plot
xlabel('Players');
ylabel('Weighted Scores (0-1)');
title('Comparison of Weighted Scores for Different Platforms');
xticks(1:numel(players));
xticklabels(players);
grid on;
ylim([0 1]);

% Rotate x-axis labels for better readability
set(gca, 'XTickLabelRotation', 45);

% Adjust the legend
legend(h, {'St1 (X Platform)', 'St2 (X Platform)', 'St3 (X Platform)', 'St1 (Meta Platform)', 'St2 (Meta Platform)', 'St3 (Meta Platform)'}, 'Location', 'NorthEast');

% Set the figure size
set(gcf, 'Position', [100, 100, 1200, 500]);
