msg = input("���� ���� ������� ������ (14-bit): ");
N = length(msg);

while (N ~= 14)
  msg = input("���� ���� ������� ������ (14-bit): ");
  N = length(msg);
end

msg = computeParity(msg);

disp("�� ������ ���� �� �� bit ��������� �����: "), disp(msg)