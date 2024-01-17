% Define the player names, strategy names, and weighted scores for both platforms
players = {'Company Developer', 'Users', 'Regulatory Bodies', 'Third-party developers & Advertisers'};
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

% Create a figure for the comparison using a multiline plot
figure;
hold on;

for i = 1:numel(players)
    plot(1:numel(strategies), weighted_scores_x(i, :), '-o', 'LineWidth', 1.5, 'DisplayName', [players{i}, ' (X)']);
    plot(1:numel(strategies), weighted_scores_meta(i, :), '--s', 'LineWidth', 1.5, 'DisplayName', [players{i}, ' (Meta)']);
end

hold off;

% Customize the plot
xlabel('Strategies');
ylabel('Weighted Scores (0-1)');
title('Comparison of Weighted Scores for Different Platforms');
xticks(1:numel(strategies));
xticklabels(strategies);
legend('Location', 'Best');
grid on;
ylim([0 1]);
