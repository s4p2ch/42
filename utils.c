void print_byte(char c)
{
    int i = 0;
    
    while(i < 8)
        printf("%d", (c & (1 << i++)) > 0);
}

void	ft_putu(unsigned int n)
{
	if (n >= 10)
	{
		ft_putu(n / 10);
		ft_putu(n % 10);
	}
	else
		write(1, (char []){n + '0', 0}, 1);
}

void	ft_putn(long n)
{
	if (n < 0)
	{
		write(1, (char []){'-', 0}, 1);
		n *= -1;
	}
	if (n >= 10)
	{
		ft_putn(n / 10);
		ft_putn(n % 10);
	}
	else
		write(1, (char []){n + '0', 0}, 1);
}

