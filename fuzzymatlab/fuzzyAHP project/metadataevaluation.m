% Define the player names, strategy names, and weighted scores
players = {'Company Developer', 'Users', 'Regulatory Bodies', 'Third-party developers & advertisers'};
strategies = {'St1', 'St2', 'St3'};
weighted_scores = [
    0.5082 0.1699 0.3220;
    0.1887 0.5439 0.2674;
    0.5326 0.3031 0.1643;
    0.5771 0.1464 0.2765
];

% Create a bar graph
figure;
bar(weighted_scores, 'grouped');

% Customize the plot
xlabel('Players');
ylabel('Weighted Scores (0-1)');
title('Weighted Scores Using FAHP for Different Players and Strategies in Meta platform');
xticks(1:numel(players));
xticklabels(players);

% Add labels with weighted scores at the top of each bar
for i = 1:numel(players)
    for j = 1:numel(strategies)
        text(i - 0.15 + (j - 1) * 0.15, weighted_scores(i, j) + 0.02, num2str(weighted_scores(i, j), '%.4f'), 'HorizontalAlignment', 'center', 'VerticalAlignment','middle');
    end
end

% Adjust the legend
legend(strategies, 'Location', 'NorthEast');

% Show the plot
grid on;
ylim([0 1]);
