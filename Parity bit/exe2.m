msg = input("���� ���� ������� ������ (14-bit): ");
N = length(msg);

while (N ~= 14)
  msg = input("���� ���� ������� ������ (14-bit): ");
  N = length(msg);
endwhile

msg = computeParity(msg);

if (validateParity(msg))
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
endif

msg = bitManipulation(msg, 1, 6);

if (validateParity(msg))
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
endif

msg = bitManipulation(msg, 1, 12);

if (validateParity(msg))
  disp("�� ������ ��� ���� ������� ��������.");
else
  disp("�� ������ ���� ������� ��������.");
endif