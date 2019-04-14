using System;
using System.Collections.Generic;
using System.Text;

namespace GZS.Model.Menu
{
    public class CompanyShow
    {
        #region Model
        private int _companyid;//���
        private string _username;//�û���   
        private byte[] _userpwd;//����
        private string _telphone;//�绰����
        private string _mobile;//�ֻ�����
        private string _email;//��������
        private int _audit;//���״̬
        private DateTime _starttime;//����ʱ��
        private int _valid;//��Ч��
        private string _typename;//����
        private int _hit;//�����
        private int _roleId;
        private int _levels;
        private string _levelName;
        private string _companyName;
        public string LevelName
        {
            set { _levelName = value; }
            get { return _levelName; }
        }
        public int Levels
        {
            set { _levels = value; }
            get { return _levels; }
        }
        /// <summary>
        /// ��ҵ����
        /// </summary>
        public string CompanyName
        {
            set { _companyName = value; }
            get { return _companyName; }
        }
        public int RoleId
        {
            set { _roleId = value; }
            get { return _roleId; }
        }

        /// <summary>
        /// ���
        /// </summary>
        public int CompanyID
        {
            set { _companyid = value; }
            get { return _companyid; }
        }
        /// <summary>
        /// �û���
        /// </summary>
        public string UserName
        {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// ����
        /// </summary>
        public byte[] UserPwd
        {
            set { _userpwd = value; }
            get { return _userpwd; }
        }
        /// <summary>
        /// �绰����
        /// </summary>
        public string TelPhone
        {
            set { _telphone = value; }
            get { return _telphone; }
        }
        /// <summary>
        /// �ֻ�����
        /// </summary>
        public string Mobile
        {
            set { _mobile = value; }
            get { return _mobile; }
        }
        /// <summary>
        /// ��������
        /// </summary>
        public string Email
        {
            set { _email = value; }
            get { return _email; }
        }
        /// <summary>
        /// ���
        /// </summary>
        public int Audit
        {
            set { _audit = value; }
            get { return _audit; }
        }
        /// <summary>
        /// ����ʱ��
        /// </summary>
        public DateTime StartTime
        {
            set { _starttime = value; }
            get { return _starttime; }
        }
        /// <summary>
        /// ��Ч��
        /// </summary>
        public int Valid
        {
            set { _valid = value; }
            get { return _valid; }
        }
        /// <summary>
        /// ״̬
        /// </summary>
        public string TypeName
        {
            set { _typename = value; }
            get { return _typename; }
        }
        /// <summary>
        /// �����
        /// </summary>
        public int Hit
        {
            set { _hit = value; }
            get { return _hit; }
        }
        #endregion Model
    }
}