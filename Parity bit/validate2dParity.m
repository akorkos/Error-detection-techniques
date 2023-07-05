function isValid = validate2dParity (msg, N, M)
	%{
	��������� ��� ���������� ���� � compute2dParity.m,
	���� ��� ����� �������� ��� �� ����� ��� ������������ ������ ��� �������
	���������� �� ������� ��� ���. ���������, ���. �� ����� ��� ������ ���
	��� ������� �� ����� ������ �������
	%}

	isValid1 = true;
	isValid2 = true;

	for i = 1 : N + 1
	  countOnes = 0;
	  for j = 1 : M + 1
		if (msg(i ,j))
		  countOnes = countOnes + 1;
		end
	  end
	  if (mod(countOnes, 2) == 0 && isValid1)
		isValid1 = true;
	  else
		isValid1 = false;
	  end
	end

	for i = 1 : M + 1
	  countOnes = 0;
	  for j = 1 : N + 1
		if (msg(j, i))
		  countOnes = countOnes + 1;
		end
	  end
	  if (mod(countOnes, 2) == 0 && isValid2)
		isValid2 = true;
	  else
		isValid2 = false;
	  end
	end
	isValid = isValid1 && isValid2;
end
