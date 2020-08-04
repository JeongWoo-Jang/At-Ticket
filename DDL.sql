/* ȸ�� */
CREATE TABLE tblCustomer (
	seq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	name VARCHAR2(50) NOT NULL, /* �̸� */
	ssn VARCHAR2(50) NOT NULL, /* �ֹι�ȣ */
	id VARCHAR2(50) NOT NULL, /* ���̵� */
	pw VARCHAR2(50) NOT NULL, /* ��й�ȣ */
	egg NUMBER NOT NULL, /* ���׸Ӵ� */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCustomer IS 'ȸ��';

COMMENT ON COLUMN tblCustomer.seq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblCustomer.name IS '�̸�';

COMMENT ON COLUMN tblCustomer.ssn IS '�ֹι�ȣ';

COMMENT ON COLUMN tblCustomer.id IS '���̵�';

COMMENT ON COLUMN tblCustomer.pw IS '��й�ȣ';

COMMENT ON COLUMN tblCustomer.egg IS '���׸Ӵ�';

COMMENT ON COLUMN tblCustomer.delflag IS 'deflag';

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

COMMENT ON TABLE tblAdmin IS '������';

COMMENT ON COLUMN tblAdmin.seq IS '������ ��ȣ';

COMMENT ON COLUMN tblAdmin.img IS '�̹���';

COMMENT ON COLUMN tblAdmin.id IS '���̵�';

COMMENT ON COLUMN tblAdmin.pw IS '��й�ȣ';

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
	buseoSeq NUMBER NOT NULL, /* �μ� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEmployee IS '����';

COMMENT ON COLUMN tblEmployee.seq IS '���� ��ȣ';

COMMENT ON COLUMN tblEmployee.name IS '�̸�';

COMMENT ON COLUMN tblEmployee.jikwi IS '����';

COMMENT ON COLUMN tblEmployee.salary IS '����';

COMMENT ON COLUMN tblEmployee.ssn IS '�ֹι�ȣ';

COMMENT ON COLUMN tblEmployee.tel IS '��ȭ��ȣ';

COMMENT ON COLUMN tblEmployee.buseoSeq IS '�μ� ��ȣ';

COMMENT ON COLUMN tblEmployee.delflag IS 'deflag';

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
	agencySeq NUMBER NOT NULL, /* ��ȹ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblShow IS '����';

COMMENT ON COLUMN tblShow.seq IS '���� ��ȣ';

COMMENT ON COLUMN tblShow.title IS '����';

COMMENT ON COLUMN tblShow.startDate IS '���۱Ⱓ';

COMMENT ON COLUMN tblShow.endDate IS '����Ⱓ';

COMMENT ON COLUMN tblShow.price IS '����';

COMMENT ON COLUMN tblShow.poster IS '������';

COMMENT ON COLUMN tblShow.content IS '��������';

COMMENT ON COLUMN tblShow.openDate IS '�����Ͻ�';

COMMENT ON COLUMN tblShow.age IS '����';

COMMENT ON COLUMN tblShow.genre IS '�帣';

COMMENT ON COLUMN tblShow.agencySeq IS '��ȹ�� ��ȣ';

COMMENT ON COLUMN tblShow.delflag IS 'deflag';

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
	showSeq NUMBER NOT NULL, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblTag IS '���� �±�';

COMMENT ON COLUMN tblTag.seq IS '�±� ��ȣ';

COMMENT ON COLUMN tblTag.name IS '�±��̸�';

COMMENT ON COLUMN tblTag.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblTag.delflag IS 'deflag';

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

COMMENT ON TABLE tblVisitor IS '�湮��';

COMMENT ON COLUMN tblVisitor.seq IS '�湮�� ��ȣ';

COMMENT ON COLUMN tblVisitor.date IS '��¥';

COMMENT ON COLUMN tblVisitor.cnt IS '�湮�� ��';

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
	showSeq NUMBER NOT NULL, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEvent IS '�̺�Ʈ';

COMMENT ON COLUMN tblEvent.seq IS '�̺�Ʈ ��ȣ';

COMMENT ON COLUMN tblEvent.title IS '����';

COMMENT ON COLUMN tblEvent.startDate IS '���۱Ⱓ';

COMMENT ON COLUMN tblEvent.endDate IS '����Ⱓ';

COMMENT ON COLUMN tblEvent.index IS '����';

COMMENT ON COLUMN tblEvent.content IS '����';

COMMENT ON COLUMN tblEvent.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblEvent.delflag IS 'deflag';

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
	showSeq NUMBER, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblRoundInfo IS 'ȸ������';

COMMENT ON COLUMN tblRoundInfo.seq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblRoundInfo.date IS '��¥';

COMMENT ON COLUMN tblRoundInfo.startDate IS '���� ���۽ð�';

COMMENT ON COLUMN tblRoundInfo.endDate IS '���� ����ð�';

COMMENT ON COLUMN tblRoundInfo.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblRoundInfo.delflag IS 'deflag';

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

COMMENT ON TABLE tblAgency IS '��ȹ��';

COMMENT ON COLUMN tblAgency.seq IS '��ȹ�� ��ȣ';

COMMENT ON COLUMN tblAgency.host IS '����';

COMMENT ON COLUMN tblAgency.management IS '�ְ�';

COMMENT ON COLUMN tblAgency.tel IS '���ǹ�ȣ';

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

COMMENT ON TABLE tblBuseo IS '���� �μ�';

COMMENT ON COLUMN tblBuseo.seq IS '�μ� ��ȣ';

COMMENT ON COLUMN tblBuseo.name IS '�μ���';

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
	endDate DATE NOT NULL, /* �����Ͻ� */
	discount NUMBER NOT NULL, /* ������ */
	img VARCHAR2(50) NOT NULL, /* �̹��� */
	showSeq NUMBER NOT NULL, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCoupon IS '����';

COMMENT ON COLUMN tblCoupon.seq IS '���� ��ȣ';

COMMENT ON COLUMN tblCoupon.title IS '����';

COMMENT ON COLUMN tblCoupon.startDate IS '�����Ͻ�';

COMMENT ON COLUMN tblCoupon.endDate IS '�����Ͻ�';

COMMENT ON COLUMN tblCoupon.discount IS '������';

COMMENT ON COLUMN tblCoupon.img IS '�̹���';

COMMENT ON COLUMN tblCoupon.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblCoupon.delflag IS 'deflag';

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
	roundSeq NUMBER, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblBooking IS '����';

COMMENT ON COLUMN tblBooking.seq IS '���Ź�ȣ';

COMMENT ON COLUMN tblBooking.bookdate IS '������';

COMMENT ON COLUMN tblBooking.date IS '�����Ͻ�';

COMMENT ON COLUMN tblBooking.state IS '���Ż���';

COMMENT ON COLUMN tblBooking.cnt IS '�ż�';

COMMENT ON COLUMN tblBooking.roundSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblBooking.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCusCoupon IS '����-ȸ��';

COMMENT ON COLUMN tblCusCoupon.seq IS '��ȸ ��ȣ';

COMMENT ON COLUMN tblCusCoupon.regDate IS '�����';

COMMENT ON COLUMN tblCusCoupon.couponSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblCusCoupon.cusSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblCusCoupon.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblMyShow IS '���ɰ���';

COMMENT ON COLUMN tblMyShow.seq IS '���ɰ��� ��ȣ';

COMMENT ON COLUMN tblMyShow.regdate IS '�����';

COMMENT ON COLUMN tblMyShow.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblMyShow.cusSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblMyShow.delflag IS 'deflag';

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
	region VARCHAR2(50) NOT NULL, /* ���� */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblHall IS '������';

COMMENT ON COLUMN tblHall.seq IS '������ ��ȣ';

COMMENT ON COLUMN tblHall.name IS '�̸�';

COMMENT ON COLUMN tblHall.addr IS '�ּ�';

COMMENT ON COLUMN tblHall.region IS '����';

COMMENT ON COLUMN tblHall.delflag IS 'deflag';

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
	thSeq NUMBER NOT NULL, /* �󿵰� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblSeat IS '�¼�';

COMMENT ON COLUMN tblSeat.seq IS '�¼� ��ȣ';

COMMENT ON COLUMN tblSeat.seat IS '�¼�';

COMMENT ON COLUMN tblSeat.reserv IS '���࿩��';

COMMENT ON COLUMN tblSeat.thSeq IS '�󿵰� ��ȣ';

COMMENT ON COLUMN tblSeat.delflag IS 'deflag';

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
	showSeq NUMBER, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblTheater IS '���� �󿵰�';

COMMENT ON COLUMN tblTheater.seq IS '�󿵰� ��ȣ';

COMMENT ON COLUMN tblTheater.name IS '�̸�';

COMMENT ON COLUMN tblTheater.totalSeat IS '�� �¼� ��';

COMMENT ON COLUMN tblTheater.hallSeq IS '������ ��ȣ';

COMMENT ON COLUMN tblTheater.showSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblTheater.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblPay IS '����';

COMMENT ON COLUMN tblPay.seq IS '���� ��ȣ';

COMMENT ON COLUMN tblPay.total IS '�� ���� ����';

COMMENT ON COLUMN tblPay.opSeq IS '�ɼ� ��ȣ';

COMMENT ON COLUMN tblPay.bookseq IS '���Ź�ȣ';

COMMENT ON COLUMN tblPay.cusSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblPay.delflag IS 'deflag';

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

COMMENT ON TABLE tblOption IS '���� �ɼ�';

COMMENT ON COLUMN tblOption.seq IS '�ɼ� ��ȣ';

COMMENT ON COLUMN tblOption.option IS '�ɼ�';

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

COMMENT ON TABLE tblNotice IS '�������� �Խ���';

COMMENT ON COLUMN tblNotice.seq IS '�������׹�ȣ';

COMMENT ON COLUMN tblNotice.index IS '����';

COMMENT ON COLUMN tblNotice.title IS '����';

COMMENT ON COLUMN tblNotice.openDate IS 'Ƽ�Ͽ��³�¥';

COMMENT ON COLUMN tblNotice.content IS '����';

COMMENT ON COLUMN tblNotice.regdate IS '�����';

COMMENT ON COLUMN tblNotice.view IS '��ȸ��';

ALTER TABLE tblNotice
	ADD
		CONSTRAINT PK_tblNotice
		PRIMARY KEY (
			seq
		);

/* ���� */
CREATE TABLE tblReview (
	seq NUMBER NOT NULL, /* ���� ��ȣ */
	title VARCHAR2(100) NOT NULL, /* ���� */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	regdate DATE NOT NULL, /* ����� */
	view NUMBER NOT NULL, /* ��ȸ�� */
	like NUMBER NOT NULL, /* ���ƿ� */
	hate NUMBER NOT NULL, /* ���� */
	cusSeq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblReview IS '����';

COMMENT ON COLUMN tblReview.seq IS '���� ��ȣ';

COMMENT ON COLUMN tblReview.title IS '����';

COMMENT ON COLUMN tblReview.content IS '����';

COMMENT ON COLUMN tblReview.regdate IS '�����';

COMMENT ON COLUMN tblReview.view IS '��ȸ��';

COMMENT ON COLUMN tblReview.like IS '���ƿ�';

COMMENT ON COLUMN tblReview.hate IS '����';

COMMENT ON COLUMN tblReview.cusSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblReview.delflag IS 'deflag';

ALTER TABLE tblReview
	ADD
		CONSTRAINT PK_tblReview
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
	cusSeq NUMBER NOT NULL, /* ȸ�� ��ȣ */
	delflag NUMBER NOT NULL, /* deflag */
	ansSeq NUMBER /* �亯��ȣ */
);

COMMENT ON TABLE tblQnA IS 'Q&A�Խ���';

COMMENT ON COLUMN tblQnA.seq IS 'qa��ȣ';

COMMENT ON COLUMN tblQnA.title IS '����';

COMMENT ON COLUMN tblQnA.content IS '����';

COMMENT ON COLUMN tblQnA.tag IS '�±�';

COMMENT ON COLUMN tblQnA.regdate IS '�����';

COMMENT ON COLUMN tblQnA.view IS '��ȸ��';

COMMENT ON COLUMN tblQnA.cusSeq IS 'ȸ�� ��ȣ';

COMMENT ON COLUMN tblQnA.delflag IS 'deflag';

COMMENT ON COLUMN tblQnA.ansSeq IS '�亯��ȣ';

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
	emSeq NUMBER NOT NULL, /* ���� ��ȣ */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEmploNotice IS '�系�����Խ���';

COMMENT ON COLUMN tblEmploNotice.seq IS '�系������ȣ';

COMMENT ON COLUMN tblEmploNotice.title IS '����';

COMMENT ON COLUMN tblEmploNotice.content IS '����';

COMMENT ON COLUMN tblEmploNotice.regdate IS '�����';

COMMENT ON COLUMN tblEmploNotice.view IS '��ȸ��';

COMMENT ON COLUMN tblEmploNotice.emSeq IS '���� ��ȣ';

COMMENT ON COLUMN tblEmploNotice.delflag IS 'deflag';

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

COMMENT ON TABLE tblBanner IS '���';

COMMENT ON COLUMN tblBanner.seq IS '��� ��ȣ';

COMMENT ON COLUMN tblBanner.name IS '����̸�';

COMMENT ON COLUMN tblBanner.img IS '�̹����̸�';

COMMENT ON COLUMN tblBanner.link IS '��ũ';

COMMENT ON COLUMN tblBanner.backColor IS '����';

ALTER TABLE tblBanner
	ADD
		CONSTRAINT PK_tblBanner
		PRIMARY KEY (
			seq
		);

/* Q&A�亯 */
CREATE TABLE tblAnswer (
	seq NUMBER NOT NULL, /* �亯��ȣ */
	content VARCHAR2(1000) NOT NULL, /* ���� */
	regdate DATE NOT NULL, /* ����� */
	adSeq NUMBER NOT NULL, /* ������ ��ȣ */
	deflag NUMBER NOT NULL /* delflag */
);

COMMENT ON TABLE tblAnswer IS 'Q&A�亯';

COMMENT ON COLUMN tblAnswer.seq IS '�亯��ȣ';

COMMENT ON COLUMN tblAnswer.content IS '����';

COMMENT ON COLUMN tblAnswer.regdate IS '�����';

COMMENT ON COLUMN tblAnswer.adSeq IS '������ ��ȣ';

COMMENT ON COLUMN tblAnswer.deflag IS 'delflag';

ALTER TABLE tblAnswer
	ADD
		CONSTRAINT PK_tblAnswer
		PRIMARY KEY (
			seq
		);