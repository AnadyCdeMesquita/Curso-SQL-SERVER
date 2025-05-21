declare @user varchar(30)
set @user = '  maria maria   '

select
@user,
len(@user),
rtrim(@user),
ltrim(@user),
trim(@user),
UPPER(@user),
UPPER(trim(@user)),
Lower(@user),
UPPER(trim(@user)),



