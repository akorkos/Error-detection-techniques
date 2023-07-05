function isValid = validateParity(msg)
	%{
	��������� ��� ������� �� ������ ��� ����� ��� ���������� ���� 1 (���. true) 
	���� ���� ����� ����� ������, ����� ������ ����� ��������
	%}
	N = length(msg);
	countOnes = 0;
	for i = 1:N
		if (msg(i))
			countOnes = countOnes + 1;
		end
	end
	if (mod(countOnes, 2) == 0)
		isValid = 1;
	else
		isValid = 0;
	end
end