% 1a
%G_1a = tf([100 100],[1 10 0]);
%G_1b = tf([1 0], [1 1]);
%G_2 = tf([40], [1 1 4]);
%G_3 = tf([1],[1 -1]);

% definiera transfer function
G = tf([3 1], [1 1 0 0])

% plotta root locus diagram
rlocus(G)
%G_4_7_a = tf([1 3], [1 3 2]);
%G_4_7_b = tf([1], [1 1 5 0])
%rlocus(G_4_7_b)