/* ȸ�� */
CREATE TABLE tblCustomer (
	seq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	ssn VARCHAR2(50) NOT NULL, /* �ֹι�ȣ */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(50) NOT NULL, /* ��й�ȣ */
	egg NUMBER NOT NULL /* ���׸Ӵ� */
);

ALTER TABLE tblCustomer
	ADD
		CONSTRAINT PK_tblCustomer
		PRIMARY KEY (
			seq
		);

/* ������ */
CREATE TABLE tblAdmin (
	seq NUMBER NOT NULL, /* ������ ��ȣ */
	img VARCHAR2(50) NOT NULL, /* �̹��� */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(50) NOT NULL /* ��й�ȣ */
);

ALTER TABLE tblAdmin
	ADD
		CONSTRAINT PK_tblAdmin
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblEmployee (
	seq NUMBER NOT NULL, /* ���� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	jikwi VARCHAR2(50) NOT NULL, /* ���� */
	salary NUMBER NOT NULL, /* ���� */
	ssn VARCHAR2(50) NOT NULL, /* �ֹι�ȣ */
	tel VARCHAR2(50) NOT NULL, /* ��ȭ��ȣ */
	buseoSeq NUMBER NOT NULL /* �μ� ��ȣ */
);

ALTER TABLE tblEmployee
	ADD
		CONSTRAINT PK_tblEmployee
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblShow (
	seq NUMBER NOT NULL, /* ���� ��ȣ */
	title VARCHAR2(50) NOT NULL, /* ���� */
	startDate DATE NOT NULL, /* ���۱Ⱓ */
	endDate DATE NOT NULL, /* ����Ⱓ */
	price NUMBER NOT NULL, /* ���� */
	poster VARCHAR2(50) NOT NULL, /* ������ */
	content VARCHAR2(1000) NOT NULL, /* �������� */
	openDate DATE NOT NULL, /* �����Ͻ� */
	age NUMBER NOT NULL, /* ���� */
	genre VARCHAR2(50) NOT NULL, /* �帣 */
	agencySeq NUMBER NOT NULL /* ��ȹ�� ��ȣ */
);

ALTER TABLE tblShow
	ADD
		CONSTRAINT PK_tblShow
		PRIMARY KEY (
			seq
		);

/* ���� �±� */
CREATE TABLE tblTag (
	seq NUMBER NOT NULL, /* �±� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �±��̸� */
	showSeq NUMBER NOT NULL /* ���� ��ȣ */
);

ALTER TABLE tblTag
	ADD
		CONSTRAINT PK_tblTag
		PRIMARY KEY (
			seq
		);

/* �湮�� */
CREATE TABLE tblVisitor (
	seq NUMBER NOT NULL, /* �湮�� ��ȣ */
	date DATE NOT NULL, /* ��¥ */
	cnt NUMBER NOT NULL /* �湮�� �� */
);

ALTER TABLE tblVisitor
	ADD
		CONSTRAINT PK_tblVisitor
		PRIMARY KEY (
			seq
		);

/* �̺�Ʈ */
CREATE TABLE tblEvent (
	seq NUMBER NOT NULL, /* �̺�Ʈ ��ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	startDate DATE NOT NULL, /* ���۱Ⱓ */
	endDate DATE NOT NULL, /* ����Ⱓ */
	index VARCHAR2(20) NOT NULL, /* ���� */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	showSeq NUMBER NOT NULL /* ���� ��ȣ */
);

ALTER TABLE tblEvent
	ADD
		CONSTRAINT PK_tblEvent
		PRIMARY KEY (
			seq
		);

/* ȸ������ */
CREATE TABLE tblRoundInfo (
	seq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	date DATE NOT NULL, /* ��¥ */
	startDate DATE NOT NULL, /* ���� ���۽ð� */
	endDate DATE NOT NULL, /* ���� ����ð� */
	showSeq NUMBER /* ���� ��ȣ */
);

ALTER TABLE tblRoundInfo
	ADD
		CONSTRAINT PK_tblRoundInfo
		PRIMARY KEY (
			seq
		);

/* ��ȹ�� */
CREATE TABLE tblAgency (
	seq NUMBER NOT NULL, /* ��ȹ�� ��ȣ */
	host VARCHAR2(50) NOT NULL, /* ���� */
	management VARCHAR2(50) NOT NULL, /* �ְ� */
	tel NUMBER NOT NULL /* ���ǹ�ȣ */
);

ALTER TABLE tblAgency
	ADD
		CONSTRAINT PK_tblAgency
		PRIMARY KEY (
			seq
		);

/* ���� �μ� */
CREATE TABLE tblBuseo (
	seq NUMBER NOT NULL, /* �μ� ��ȣ */
	name VARCHAR2(50) NOT NULL /* �μ��� */
);

ALTER TABLE tblBuseo
	ADD
		CONSTRAINT PK_tblBuseo
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblCoupon (
	seq NUMBER NOT NULL, /* ���� ��ȣ */
	title VARCHAR2(50) NOT NULL, /* ���� */
	startDate DATE NOT NULL, /* �����Ͻ� */
	endDate DATE, /* �����Ͻ� */
	discount NUMBER NOT NULL, /* ������ */
	img VARCHAR2(50) NOT NULL, /* �̹��� */
	showSeq NUMBER NOT NULL /* ���� ��ȣ */
);

ALTER TABLE tblCoupon
	ADD
		CONSTRAINT PK_tblCoupon
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblBooking (
	seq NUMBER NOT NULL, /* ���Ź�ȣ */
	bookdate DATE NOT NULL, /* ������ */
	date DATE NOT NULL, /* �����Ͻ� */
	state NUMBER NOT NULL, /* ���Ż��� */
	cnt NUMBER NOT NULL, /* �ż� */
	roundSeq NUMBER /* ȸ�� ��ȣ */
);

ALTER TABLE tblBooking
	ADD
		CONSTRAINT PK_tblBooking
		PRIMARY KEY (
			seq
		);

/* ����-ȸ�� */
CREATE TABLE tblCusCoupon (
	seq NUMBER NOT NULL, /* ��ȸ ��ȣ */
	regDate DATE NOT NULL, /* ����� */
	couponSeq NUMBER NOT NULL, /* ���� ��ȣ */
	cusSeq NUMBER NOT NULL /* ȸ�� ��ȣ */
);

ALTER TABLE tblCusCoupon
	ADD
		CONSTRAINT PK_tblCusCoupon
		PRIMARY KEY (
			seq
		);

/* ���ɰ��� */
CREATE TABLE tblMyShow (
	seq NUMBER NOT NULL, /* ���ɰ��� ��ȣ */
	regdate DATE NOT NULL, /* ����� */
	showSeq NUMBER NOT NULL, /* ���� ��ȣ */
	cusSeq NUMBER NOT NULL /* ȸ�� ��ȣ */
);

ALTER TABLE tblMyShow
	ADD
		CONSTRAINT PK_tblMyShow
		PRIMARY KEY (
			seq
		);

/* ������ */
CREATE TABLE tblHall (
	seq NUMBER NOT NULL, /* ������ ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	addr VARCHAR2(50) NOT NULL, /* �ּ� */
	region VARCHAR2(50) NOT NULL /* ���� */
);

ALTER TABLE tblHall
	ADD
		CONSTRAINT PK_tblHall
		PRIMARY KEY (
			seq
		);

/* �¼� */
CREATE TABLE tblSeat (
	seq NUMBER NOT NULL, /* �¼� ��ȣ */
	seat VARCHAR2(50) NOT NULL, /* �¼� */
	reserv NUMBER NOT NULL, /* ���࿩�� */
	thSeq NUMBER NOT NULL /* �󿵰� ��ȣ */
);

ALTER TABLE tblSeat
	ADD
		CONSTRAINT PK_tblSeat
		PRIMARY KEY (
			seq
		);

/* ���� �󿵰� */
CREATE TABLE tblTheater (
	seq NUMBER NOT NULL, /* �󿵰� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	totalSeat NUMBER NOT NULL, /* �� �¼� �� */
	hallSeq NUMBER NOT NULL, /* ������ ��ȣ */
	showSeq NUMBER /* ���� ��ȣ */
);

ALTER TABLE tblTheater
	ADD
		CONSTRAINT PK_tblTheater
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblPay (
	seq NUMBER NOT NULL, /* ���� ��ȣ */
	total NUMBER NOT NULL, /* �� ���� ���� */
	opSeq NUMBER NOT NULL, /* �ɼ� ��ȣ */
	bookseq NUMBER NOT NULL, /* ���Ź�ȣ */
	cusSeq NUMBER NOT NULL /* ȸ�� ��ȣ */
);

ALTER TABLE tblPay
	ADD
		CONSTRAINT PK_tblPay
		PRIMARY KEY (
			seq
		);

/* ���� �ɼ� */
CREATE TABLE tblOption (
	seq NUMBER NOT NULL, /* �ɼ� ��ȣ */
	option VARCHAR2(50) NOT NULL /* �ɼ� */
);

ALTER TABLE tblOption
	ADD
		CONSTRAINT PK_tblOption
		PRIMARY KEY (
			seq
		);

/* �������� �Խ��� */
CREATE TABLE tblNotice (
	seq NUMBER NOT NULL, /* �������׹�ȣ */
	index VARCHAR2(50) NOT NULL, /* ���� */
	title VARCHAR2(100) NOT NULL, /* ���� */
	openDate DATE NOT NULL, /* Ƽ�Ͽ��³�¥ */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	regdate DATE NOT NULL, /* ����� */
	view NUMBER NOT NULL /* ��ȸ�� */
);

ALTER TABLE tblNotice
	ADD
		CONSTRAINT PK_tblNotice
		PRIMARY KEY (
			seq
		);

/* �����Խ��� */
CREATE TABLE tblCommunity (
	seq NUMBER NOT NULL, /* �����Խ��� ��ȣ */
	tag VARCHAR2(50) NOT NULL, /* �±� */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	regdate DATE NOT NULL, /* ����� */
	view NUMBER NOT NULL, /* ��ȸ�� */
	heart NUMBER NOT NULL, /* ���ƿ� */
	cusSeq NUMBER NOT NULL /* ȸ�� ��ȣ */
);

ALTER TABLE tblCommunity
	ADD
		CONSTRAINT PK_tblCommunity
		PRIMARY KEY (
			seq
		);

/* Q&A�Խ��� */
CREATE TABLE tblQnA (
	seq NUMBER NOT NULL, /* qa��ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	tag VARCHAR2(50) NOT NULL, /* �±� */
	regdate DATE NOT NULL, /* ����� */
	view NUMBER NOT NULL, /* ��ȸ�� */
	cusSeq NUMBER NOT NULL /* ȸ�� ��ȣ */
);

ALTER TABLE tblQnA
	ADD
		CONSTRAINT PK_tblQnA
		PRIMARY KEY (
			seq
		);

/* �系�����Խ��� */
CREATE TABLE tblEmploNotice (
	seq NUMBER NOT NULL, /* �系������ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	regdate DATE NOT NULL, /* ����� */
	view NUMBER NOT NULL, /* ��ȸ�� */
	emSeq NUMBER NOT NULL /* ���� ��ȣ */
);

ALTER TABLE tblEmploNotice
	ADD
		CONSTRAINT PK_tblEmploNotice
		PRIMARY KEY (
			seq
		);

/* ��� */
CREATE TABLE tblBanner (
	seq NUMBER NOT NULL, /* ��� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* ����̸� */
	img VARCHAR2(50) NOT NULL, /* �̹����̸� */
	link VARCHAR2(50) NOT NULL, /* ��ũ */
	backColor VARCHAR2(50) NOT NULL /* ���� */
);

ALTER TABLE tblBanner
	ADD
		CONSTRAINT PK_tblBanner
		PRIMARY KEY (
			seq
		);