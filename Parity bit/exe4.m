msg = input("���� ���� ������� ������ (28-bit): ");

N = 4;
M = 7;
len = 28;

msgMatrix = zeros(N + 1, M + 1);

msgMatrix = createMatrix(msg, M, len);

msgMatrix = compute2dParity(msgMatrix, N, M);

isValid = validate2dParity(msgMatrix, N, M);

if (isValid)
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
end

msgMatrix = bitManipulation(msgMatrix, 2, 3);

isValid = validate2dParity(msgMatrix, N, M);

if (isValid)
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
end

msgMatrix = bitManipulation(msgMatrix, 2, 5);

isValid = validate2dParity(msgMatrix, N, M);

if (isValid)
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
end