function msg = compute2dParity(msg, N, M)
	% ������� ��� ������ ��� ����� ���� �������
	for i = 1 : N
	  countOnes = 0;
	  for j = 1 : M
		if (msg(i ,j))
		  countOnes = countOnes + 1;
		end
	  end
	  if (mod(countOnes, 2) == 0) % �� ��������� ��� ����� ������, 
		% ��������� �� ��� ��� ����� �� ������ (i, M + 1) ��� ��������
		msg(i, M + 1) = 0;
	  else % ����������� ��������� 1
		msg(i, M + 1) = 1;
	  end
	end

	% ������� ��� ������ ��� ����� ���� ������
	for i = 1 : M + 1
	  countOnes = 0;
	  for j = 1 : N
		if (msg(j, i))
		  countOnes = countOnes + 1;
		end
	  end
	  if (mod(countOnes, 2) == 0) % �� ��������� ��� ����� ������, 
		% ��������� �� ��� ��� ������ �� ������ (N + 1, i) ��� ��������
		msg(N + 1, i) = 0;
	  else % ����������� ��������� 1
		msg(N + 1, i) = 1;
	  end
	end
end
