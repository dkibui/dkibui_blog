--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: about_aboutme; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.about_aboutme (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.about_aboutme OWNER TO dkibui;

--
-- Name: about_aboutme_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.about_aboutme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_aboutme_id_seq OWNER TO dkibui;

--
-- Name: about_aboutme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.about_aboutme_id_seq OWNED BY public.about_aboutme.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dkibui;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dkibui;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dkibui;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dkibui;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dkibui;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dkibui;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dkibui;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dkibui;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dkibui;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dkibui;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dkibui;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dkibui;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.blog_comment (
    id bigint NOT NULL,
    name character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean NOT NULL,
    post_id bigint NOT NULL
);


ALTER TABLE public.blog_comment OWNER TO dkibui;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.blog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO dkibui;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    body text NOT NULL,
    publish timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(12) NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.blog_post OWNER TO dkibui;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO dkibui;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dkibui;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dkibui;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dkibui;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dkibui;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dkibui;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dkibui;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dkibui;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO dkibui;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO dkibui;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: dkibui
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO dkibui;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: dkibui
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO dkibui;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dkibui
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: about_aboutme id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.about_aboutme ALTER COLUMN id SET DEFAULT nextval('public.about_aboutme_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: about_aboutme; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.about_aboutme (id, title, body, created, updated) FROM stdin;
1       I'm happy you're here so,       <p>Hi there👋🏾,</p>\r\n\r\n<p>I am David Kibui, a full stack django and Javascript developer based in Nairobi, Kenya. I enjoy piecing together fragmented information to build a body of knowledge. I love to share my knowledge with others and that&#39;s why I created this blog. By leveraging my skills as a designer and software engineer I create systems that allow people to pick up new knowledge that can transform their lives.</p>\r\n\r\n<h2>Recent work</h2>\r\n\r\n<p>Working In Progress:&nbsp;EagleHr Consultants Website<br />\r\n<a href="http://176.58.125.7/" target="_blank">http://176.58.125.7/</a></p>\r\n\r\n<p>Personal Blog:&nbsp;dkibui.com<br />\r\n<a href="https://www.dkibui.com" target="_blank">https://www.dkibui.com</a></p>\r\n\r\n<p>Graphic design website: Visign design studio<br />\r\n<a href="https://www.visign.co.ke" target="_blank">https://www.visign.co.ke</a></p>\r\n\r\n<p><strong>Technology stack for the above projects</strong></p>\r\n\r\n<ul>\r\n\t<li>Python/Django</li>\r\n\t<li>Vanilla JavaScript</li>\r\n\t<li>Svelte/Sveltekit</li>\r\n\t<li>Nodejs</li>\r\n\t<li>Mongodb</li>\r\n\t<li>Figma</li>\r\n\t<li>Ubuntu Server (Digital Ocean)</li>\r\n\t<li>Postgres</li>\r\n\t<li>Nginx (Static Server,&nbsp;Reverse Proxy)</li>\r\n\t<li>Gunicorn</li>\r\n\t<li>Git and GitHub</li>\r\n</ul>\r\n\r\n<h2>Contact me</h2>\r\n\r\n<ul>\r\n\t<li>Email: dkibui@gmail.com</li>\r\n\t<li>Cellphone: +254 728 494090</li>\r\n\t<li>Github: <a href="https://github.com/dkibui" target="_blank">https://github.com/dkibui</a></li>\r\n</ul>\r\n\r\n<h2>More...</h2>\r\n\r\n<p>I love to mentor people interested in becoming Software Engineers. This by way of giving guidance, tips and encouragement to people taking their first steps in coding or programming. If you are looking for a mentor, feel free to get in touch with me.</p>    2022-08-18 11:37:15.042856+00   2022-08-21 19:58:47.864133+00
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1       Can add log entry       1       add_logentry
2       Can change log entry    1       change_logentry
3       Can delete log entry    1       delete_logentry
4       Can view log entry      1       view_logentry
5       Can add permission      2       add_permission
6       Can change permission   2       change_permission
7       Can delete permission   2       delete_permission
8       Can view permission     2       view_permission
9       Can add group   3       add_group
10      Can change group        3       change_group
11      Can delete group        3       delete_group
12      Can view group  3       view_group
13      Can add user    4       add_user
14      Can change user 4       change_user
15      Can delete user 4       delete_user
16      Can view user   4       view_user
17      Can add content type    5       add_contenttype
18      Can change content type 5       change_contenttype
19      Can delete content type 5       delete_contenttype
20      Can view content type   5       view_contenttype
21      Can add session 6       add_session
22      Can change session      6       change_session
23      Can delete session      6       delete_session
24      Can view session        6       view_session
25      Can add post    7       add_post
26      Can change post 7       change_post
27      Can delete post 7       delete_post
28      Can view post   7       view_post
29      Can add comment 8       add_comment
30      Can change comment      8       change_comment
31      Can delete comment      8       delete_comment
32      Can view comment        8       view_comment
33      Can add about me        9       add_aboutme
34      Can change about me     9       change_aboutme
35      Can delete about me     9       delete_aboutme
36      Can view about me       9       view_aboutme
37      Can add tag     10      add_tag
38      Can change tag  10      change_tag
39      Can delete tag  10      delete_tag
40      Can view tag    10      view_tag
41      Can add tagged item     11      add_taggeditem
42      Can change tagged item  11      change_taggeditem
43      Can delete tagged item  11      delete_taggeditem
44      Can view tagged item    11      view_taggeditem
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1       pbkdf2_sha256$320000$BSGZSm38sN2OIR3OZPA2NK$vdR9zB6D79T4MWHiA3eRIbwC1BXvPKb9fOr8CoxwJMk=        2022-11-18 05:34:48.243501+00   tdkibui                   dkibui@gmail.com        t       t       2022-08-13 03:46:34.35728+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.blog_comment (id, name, email, body, created, updated, active, post_id) FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.blog_post (id, title, slug, body, publish, created, updated, status, author_id) FROM stdin;
1       Create a Python virtual environment     create-a-python-virtual-environment     <p>Before we get going, why do we need a virtual environment? Well, you see there are different versions of Python. Quite often a new version of Python is released with new features and sometimes old features are dropped! Django is built on top of Python. In other words Python is Django&#39;s foundation. We all know a house&#39;s stability changes when it&#39;s foundation changes.</p>\r\n\r\n<h2>Installation overview</h2>\r\n\r\n<p>Each Django version is built on a particular version of Python. This ensures that all Django&#39;s features are supported by the Python interpretor. A virtual environment creates a &#39;box&#39; where a particular version of Django runs on a particular version of Python. This means you can have multiple versions of Python installed in your computer with multiple versions of independent Django projects in the computer at same time. So before you install Django, first make sure the correct Python version is installed for the framework. To check your installed version, go to your command prompt and enter the following command.</p>\r\n\r\n<div>\r\n<div>\r\n<pre>\r\n<code class="language-python"># Windows\r\npython --version \r\n\r\n# macOS or Linux\r\npython3 --version</code></pre>\r\n</div>\r\n</div>\r\n\r\n<p>After the command runs, the Python version that&#39;s installed on your computer appears. For this module, make sure you&#39;re using the latest official version of Django. Use Python 3 for access to the latest Python features. If you don&#39;t have the current Python installed, go to the Python&#39;s website to download the correct version. At the time of this writing, that&#39;s version 3.10.</p>\r\n\r\n<h2>Create the project folder</h2>\r\n\r\n<p>Before installing Django, let&#39;s create a virtual environment to isolate Django from other applications. If you don&#39;t create a virtual environment Django is installed globally, it might cause conflict with other Python applications and cause them to fail.</p>\r\n\r\n<p>Start by creating a folder to contain the new project. It will also hold the folder for the virtual environment.</p>\r\n\r\n<ol>\r\n\t<li>\r\n\t<p>Open command prompt or terminal window and execute the following commands.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p>Create a new directory named test_project, and change directories into it.</p>\r\n\r\n\t<div>\r\n\t<div>\r\n\t<pre>\r\n<code class="language-python">#Windows\r\nmd test_project\r\ncd test_project\r\n\r\n#macOS or Linux\r\nmkdir test_project\r\ncd test_project</code></pre>\r\n\t</div>\r\n\t</div>\r\n\r\n\t<h2>Activate virtual environment</h2>\r\n\r\n\t<p>We&#39;ll use the integrated terminal in Visual Studio Code to avoid changing windows while we run the necessary commands to create the resources we need. We&#39;ll start by creating a virtual environment and activating it.</p>\r\n\r\n\t<div>\r\n\t<div>\r\n\t<pre>\r\n<code class="language-python"># Windows create virtual environment\r\npython -m venv venv OR py -m venv venv\r\n# Windows activate virtual environment\r\n.\\venv\\Scripts\\Activate\r\n\r\n# macOS or Linux create virtual environment\r\npython3 -m venv venv\r\n# macOS or Linux activate virtual environment\r\nsource ./venv/bin/activate</code></pre>\r\n\t</div>\r\n\t</div>\r\n\r\n\t<p>Now we have activated the virtual environment. Inside test_project folder, create a text (.txt) file and call it requirements. Open it and type the word &quot;Django&quot; without quotes and then save the text file. This&nbsp;requirements.txt.&nbsp;file stores the projects dependancies.</p>\r\n\t</li>\r\n\t<li>Inside the terminal window, run the following command to install Django and any other packages listed in&nbsp;requirements.txt&nbsp;file.\r\n\t<div>\r\n\t<div>\r\n\t<pre>\r\n<code class="language-python">#Windows\r\npython -m pip install -r requirements.txt\r\n\r\n#macOS or Linux\r\npython3 -m pip install -r requirements.txt</code></pre>\r\n\t</div>\r\n\t</div>\r\n\t</li>\r\n</ol>\r\n\r\n<p>With this command, the Django framework will begin to download. After the download is finished, we can start developing our app.</p>\r\n\r\n<h2>Start the server</h2>\r\n\r\n<p>Now we are ready to spin up the server to see the initial web page. Open the integrated terminal in Visual Studio Code and run the following command.</p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<pre>\r\n<code class="language-python">#Windows\r\npython manage.py runserver</code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>You should see something similar to this.</p>\r\n\r\n<blockquote>\r\n<p>Performing system checks...</p>\r\n\r\n<p>System check identified no issues (0 silenced).<br />\r\nMay 02, 2022 - 06:39:54<br />\r\nDjango version 4.0.5, using settings &#39;test_project.settings&#39;<br />\r\nStarting development server at http://127.0.0.1:8000/<br />\r\nQuit the server with CTRL-BREAK.</p>\r\n</blockquote>\r\n\r\n<p>Open your browser and enter the server address returned above&nbsp;http://127.0.0.1:8000/&nbsp;This will render Django&#39;s default web page. You are now ready to start working with Django. Happy coding!</p>       2022-05-13 12:06:45+00  2022-08-13 03:50:05.961896+00   2022-11-18 05:35:19.820889+00     PB      1
4       Understand how static and media files work in Django    understand-how-static-and-media-files-work-in-django    <p>Static files typically refer to CSS, JavaScript and images while media files refer to any file that a user uploads to a website. For simplicity&#39;s sake I will only consider images in this article.</p>\r\n\r\n<p>On a web page, images can be static files or media files. An image will either be hard coded or user uploaded but not both at the same time. Consider Instagram, the instagram logo is a static file since it is hard coded into the page while the images you scroll through are media files because they are uploaded to the server by users.</p>\r\n\r\n<p>Django requires you to configure the following settings to prepare it to work with static and media files in your project.</p>\r\n\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">STATIC_URL = &#39;static/&#39;\r\nSTATIC_ROOT = os.path.join(BASE_DIR, &#39;staticfiles/&#39;)\r\nSTATICFILES_DIRS = [BASE_DIR / &quot;static&quot;]\r\nMEDIA_URL = &#39;/media/&#39;\r\nMEDIA_ROOT = os.path.join(BASE_DIR, &#39;media/&#39;)</code></pre>\r\n</div>\r\n</div>\r\n\r\n<h2>what does each setting do?</h2>\r\n\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">STATIC_URL = &#39;static/&#39;</code></pre>\r\n</div>\r\n</div>\r\n\r\n<p>This tells Django to prepend the value of STATIC_URL to the path of each static file request. Consider&nbsp;www.domain.com&nbsp;for each static file a GET request is sent through&nbsp;static</p>\r\n\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">www.domain.com/static/css/...\r\nwww.domain.com/static/javascript/...\r\nwww.domain.com/static/images/...</code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>Onto media settings</p>\r\n\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">MEDIA_URL = &#39;/media/&#39;</code></pre>\r\n</div>\r\n</div>\r\n\r\n<p>This tells Django to prepend the value of MEDIA_URL to the path of each media file request. Again consider&nbsp;www.domain.com&nbsp;for each media file a GET request is sent through&nbsp;<em>media</em>.</p>\r\n\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">www.domain.com/media/....</code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>Now let&#39;s look at STATICFILES_DIRS and STATIC_ROOT because they belong together.</p>\r\n\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">STATICFILES_DIRS = [BASE_DIR / &quot;static&quot;]\r\nSTATIC_ROOT = os.path.join(BASE_DIR, &#39;staticfiles/&#39;)</code></pre>\r\n</div>\r\n</div>\r\n\r\n<p>In Django you make your project by starting one or several apps. Each app can have it&#39;s own static folder and files but is not required. By default Django starts looking for static files inside an app&#39;s static folder. STATICFILES_DIRS setting exists to let Django know that you have other static folder(s) and file(s) outside the app folder. For instance STATICFILES_DIRS = [BASE_DIR / &quot;static&quot;] tells Django there&#39;s a folder called&nbsp;<em>static</em>&nbsp;in the root of our Django project containing static files. If you have other folders you append their location in the same list.</p>\r\n\r\n<p>Before deploying your project run&nbsp;python manage.py collectstatic&nbsp;command. This command collects all static files from every app plus every static file inside folders declared in STATICFILES_DIRS list and put them inside the folder you declared in STATIC_ROOT</p>\r\n\r\n<p>The above means you only need STATICFILES_DIRS setting if and only if you have static files outside your app folder.</p>\r\n\r\n<p>The last setting is MEDIA_ROOT. Let me explain it below.</p>\r\n\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">MEDIA_ROOT = os.path.join(BASE_DIR, &#39;media/&#39;)</code></pre>\r\n<img src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" /><span style="background-image:url(https://dkibui.com/static/ckeditor/ckeditor/plugins/widget/images/handle.png); background:rgba(220,220,220,0.5); display:none"><img height="15" role="presentation" src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" title="Click and drag to move" width="15" /></span></div>\r\n</div>\r\n</div>\r\n\r\n<p>This is where all uploaded files are stored. You define your database table in&nbsp;models.py&nbsp;file. When you create an&nbsp;ImageField&nbsp;or&nbsp;FileField&nbsp;in your model, you pass the method a parameter which is the name of the folder where that field will upload its files. Each upload field will create its own folder inside the MEDIA_ROOT folder.</p>\r\n\r\n<p>Django is really not meant to serve static and media files. It will begrudgingly serve them during development but not in production. Django delegates serving static and media files to a dedicated server like Nginx or Apache.</p>        2022-07-30 16:59:20+00  2022-08-13 16:59:53.376407+00   2022-08-13 17:00:19.360247+00   PB      1
5       How to Relate Users with Data from Database Tables in the Python Shell with Django      how-to-relate-users-with-data-from-database-tables-in-the-python-shell-with-django        <p>In this article, we explain how to relate users with data from database tables in the Python shell with Django. What is meant by this is, say we have users on our website and the users create content, such as comments, ratings for products, etc. These users are the creators of the comments that they write and the ratings that they give. They own the comments and the ratings.</p>\r\n\r\n<p>In our simple program we&#39;ll demonstrate, we&#39;ll have users and we&#39;ll have a database table named Car.</p>\r\n\r\n<p>We&#39;ll show how in the Python shell you can show the relations between users and specific data of a database table that can represent objects, such as comments, user ratings, etc.</p>\r\n\r\n<p>In this specific example, we&#39;ll show demonstrate how we can relate users with Cars from the Car database table.</p>\r\n\r\n<p>So, for this project, we will create users, as well as the Car database. So, below is the&nbsp;models.py&nbsp;file in which we create the user, as well as the Car database table.</p>\r\n\r\n<pre>\r\n<code>from django.conf import settings\r\nfrom django.db import models\r\n\r\nUser= settings.AUTH_USER_MODEL\r\n\r\nclass Car(models.Model):\r\n    user= models.ForeignKey(User)\r\n    name= models.CharField(max_length=100)\r\n\r\n    def __str__(self):\r\n        return self.name\r\n</code></pre>\r\n\r\n<p>So this is what is in our&nbsp;models.py&nbsp;file.</p>\r\n\r\n<p>In this file, we import settings from&nbsp;django.conf</p>\r\n\r\n<p>settings is necessary because we use this to create User, which is used to link users with the Car database table.</p>\r\n\r\n<p>We also import models, which is always done to create a database table in Django.</p>\r\n\r\n<p>We create a single field for the Car database table called name. This will store the name of each car in the database table.</p>\r\n\r\n<p>In this class that we created we create a&nbsp;__str__&nbsp;function. The reason we do this is when we refernence the objects in the database, we want a string returned, not just a generic object, which will be shown unless we define the objects in the database table with the&nbsp;__str__&nbsp;function. In the&nbsp;__str__&nbsp;function, we simply return the name of the Car.</p>\r\n\r\n<p>I went into the admin and created 3 cars for this database table: Car 1, Car 2, and Car 3. This can be seen below Now we&#39;re going to go into the shell and show how to relate users with these Car objects. So the first thing we must do is import the database table to the shell. This is done through the following line of code.</p>\r\n\r\n<pre>\r\n<code>from Blog.models import Car\r\n</code></pre>\r\n\r\n<p>Because the Car database table is located in the&nbsp;models.py&nbsp;file in my Blog app, I specified the above line. However, if you have a different app name, then change the Blog to that name. If you created a different database name, change Car to the database name you created.</p>\r\n\r\n<p>With this line, we now have access to the Car database table in the shell. If we use the following line shown below, we can list out all the objects in the Car database table. So now we&#39;ve listed out all of the objects in the Car database table.</p>\r\n\r\n<p>This is shown below.</p>\r\n\r\n<p>Now we&#39;re just returned the plain username. You can also do other stuff such as get the username&#39;s email.</p>\r\n\r\n<p>This is shown in the following line. Another powerful thing you can do is get the class of the user. This is shown in the following code below.</p>\r\n\r\n<p>Because we created the user with Django&#39;s built-in user model, we are returned the class, What&#39;s even more powerful is that if you create a variable and assign it to the user&#39;s class, you can then get all of the users of the class.</p>\r\n\r\n<h4>Starting with the Users</h4>\r\n\r\n<p>Now we will start off working with the users and getting the objects that they own.</p>\r\n\r\n<p>We do this with the following code shown below.</p>\r\n\r\n<p>So to get users from Django&#39;s built in user model, we use the line,</p>\r\n\r\n<pre>\r\n<code>from django.contrib.auth import get_user_model\r\n</code></pre>\r\n\r\n<p>We then create a variable named User and set it equal to&nbsp;get_user_model().</p>\r\n\r\n<p>So any time you want to get all of the objects that a user owns for a given database table, you call the username, followed by a dot, followed by the database name_set (in this case car, so it&#39;s car_set), followed by&nbsp;all()&nbsp;This gets all the objects of the Car database that belongs to the user.</p>\r\n\r\n<p>So this is how you can data in a database table with user and relate users with data in database table in Django in the Python shell.</p>       2022-07-13 17:02:50+00  2022-08-13 17:03:25.814933+00     2022-08-13 17:03:25.814951+00   PB      1
6       How to Relate Users with Data from Database Tables in the Python Shell with Django      how-to-relate-users-with-data-from-database-tables-in-the-python-shell-with-django        <p>In this article, we explain how to relate users with data from database tables in the Python shell with Django. What is meant by this is, say we have users on our website and the users create content, such as comments, ratings for products, etc. These users are the creators of the comments that they write and the ratings that they give. They own the comments and the ratings.</p>\r\n\r\n<p>In our simple program we&#39;ll demonstrate, we&#39;ll have users and we&#39;ll have a database table named Car.</p>\r\n\r\n<p>We&#39;ll show how in the Python shell you can show the relations between users and specific data of a database table that can represent objects, such as comments, user ratings, etc.</p>\r\n\r\n<p>In this specific example, we&#39;ll show demonstrate how we can relate users with Cars from the Car database table.</p>\r\n\r\n<p>So, for this project, we will create users, as well as the Car database. So, below is the&nbsp;models.py&nbsp;file in which we create the user, as well as the Car database table.</p>\r\n\r\n<pre>\r\n<code>from django.conf import settings\r\nfrom django.db import models\r\n\r\nUser= settings.AUTH_USER_MODEL\r\n\r\nclass Car(models.Model):\r\n    user= models.ForeignKey(User)\r\n    name= models.CharField(max_length=100)\r\n\r\n    def __str__(self):\r\n        return self.name\r\n</code></pre>\r\n\r\n<p>So this is what is in our&nbsp;models.py&nbsp;file.</p>\r\n\r\n<p>In this file, we import settings from&nbsp;django.conf</p>\r\n\r\n<p>settings is necessary because we use this to create User, which is used to link users with the Car database table.</p>\r\n\r\n<p>We also import models, which is always done to create a database table in Django.</p>\r\n\r\n<p>We create a single field for the Car database table called name. This will store the name of each car in the database table.</p>\r\n\r\n<p>In this class that we created we create a&nbsp;__str__&nbsp;function. The reason we do this is when we refernence the objects in the database, we want a string returned, not just a generic object, which will be shown unless we define the objects in the database table with the&nbsp;__str__&nbsp;function. In the&nbsp;__str__&nbsp;function, we simply return the name of the Car.</p>\r\n\r\n<p>I went into the admin and created 3 cars for this database table: Car 1, Car 2, and Car 3. This can be seen below Now we&#39;re going to go into the shell and show how to relate users with these Car objects. So the first thing we must do is import the database table to the shell. This is done through the following line of code.</p>\r\n\r\n<pre>\r\n<code>from Blog.models import Car\r\n</code></pre>\r\n\r\n<p>Because the Car database table is located in the&nbsp;models.py&nbsp;file in my Blog app, I specified the above line. However, if you have a different app name, then change the Blog to that name. If you created a different database name, change Car to the database name you created.</p>\r\n\r\n<p>With this line, we now have access to the Car database table in the shell. If we use the following line shown below, we can list out all the objects in the Car database table. So now we&#39;ve listed out all of the objects in the Car database table.</p>\r\n\r\n<p>This is shown below.</p>\r\n\r\n<p>Now we&#39;re just returned the plain username. You can also do other stuff such as get the username&#39;s email.</p>\r\n\r\n<p>This is shown in the following line. Another powerful thing you can do is get the class of the user. This is shown in the following code below.</p>\r\n\r\n<p>Because we created the user with Django&#39;s built-in user model, we are returned the class, What&#39;s even more powerful is that if you create a variable and assign it to the user&#39;s class, you can then get all of the users of the class.</p>\r\n\r\n<h4>Starting with the Users</h4>\r\n\r\n<p>Now we will start off working with the users and getting the objects that they own.</p>\r\n\r\n<p>We do this with the following code shown below.</p>\r\n\r\n<p>So to get users from Django&#39;s built in user model, we use the line,</p>\r\n\r\n<pre>\r\n<code>from django.contrib.auth import get_user_model\r\n</code></pre>\r\n\r\n<p>We then create a variable named User and set it equal to&nbsp;get_user_model().</p>\r\n\r\n<p>So any time you want to get all of the objects that a user owns for a given database table, you call the username, followed by a dot, followed by the database name_set (in this case car, so it&#39;s car_set), followed by&nbsp;all()&nbsp;This gets all the objects of the Car database that belongs to the user.</p>\r\n\r\n<p>So this is how you can data in a database table with user and relate users with data in database table in Django in the Python shell.</p>       2022-08-18 15:05:27+00  2022-08-18 15:06:02.187342+00     2022-08-18 15:06:02.18737+00    PB      1
3       General Python Knowledge        general-python-knowledge        <p>When working random numbers.&nbsp;For integers, there is uniform selection from a range. For sequences, there is uniform selection of a random element, a function to generate a random permutation of a list in-place, and a function for random sampling without replacement.</p>\r\n\r\n<p><strong>Random numbers</strong></p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">import random\r\n\r\ndef random_number():\r\n    return random.randint(1,4)\r\n\r\nprint(random_number())\r\n\r\n# this function returns an integer between 1 and 4. 1 and 4 included</code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">import random\r\n\r\ndef random_number():\r\n    return random.randint(1,5)\r\n\r\nrandon_numbers = []\r\n\r\nfor x in range(1,26):\r\n    randon_numbers.append(random_number())\r\n\r\nfreq_of_randon_numbers = { x:randon_numbers.count(x) for x in randon_numbers }\r\n\r\nprint(freq_of_randon_numbers)</code></pre>\r\n<img src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" /><span style="background-image:url(https://dkibui.com/static/ckeditor/ckeditor/plugins/widget/images/handle.png); background:rgba(220,220,220,0.5); display:none"><img height="15" role="presentation" src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" title="Click and drag to move" width="15" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<blockquote>\r\n<p># { 5: 11, 2: 5, 1: 4, 3: 3, 4: 2 }</p>\r\n</blockquote>\r\n\r\n<p>When working random numbers.&nbsp;For integers, there is uniform selection from a range. For sequences, there is uniform selection of a random element, a function to generate a random permutation of a list in-place, and a function for random sampling without replacement.</p> 2022-08-06 16:57:30+00  2022-08-13 16:58:28.663306+00   2022-09-08 07:39:18.077708+00   PB      1
8       Object Oriented Programming in Python   object-oriented-programming-in-python   <p>What is object oriented programming, it is a programming paradigm that organizes data into specially designed entities called objects and functionality for processing the data into specially designed functions called methods. The design of these objects and methods is specified into kinds of blueprints called classes.</p>\r\n\r\n<p>An object is a unit of data that belongs to a particular class. The unit has has one or more attributes in forms of instance or class variable and or methods.</p>\r\n\r\n<p>So here before we proceed, let&#39;s be clear about&nbsp;Object Oriented Programming terminologies.&nbsp;</p>\r\n\r\n<table border="0" style="width:100%">\r\n\t<thead>\r\n\t\t<tr>\r\n\t\t\t<th scope="col" style="text-align:left">OOP Terminologies</th>\r\n\t\t\t<th scope="col" style="text-align:left">Description</th>\r\n\t\t</tr>\r\n\t</thead>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:left">Class</td>\r\n\t\t\t<td style="text-align:left">Class is the blueprint for an&nbsp;instance. It defines class and instance attributes.&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:left">Instance</td>\r\n\t\t\t<td style="text-align:left">A contructed object of a class.&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:left">Type</td>\r\n\t\t\t<td style="text-align:left">This shows the class from which an instance belongs to.&nbsp;</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:left">Attribute</td>\r\n\t\t\t<td style="text-align:left">An attribute is really the state of an instance. If we create instances of a bank account,&nbsp;account A might have 1000 units while account B might have 0.</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td style="text-align:left">Method</td>\r\n\t\t\t<td style="text-align:left">A method is a fuction that is defined inside of a class. The method is&nbsp;used by instances of that class. A method is callable attribute. It is an attribute because it defines functionality of the class to which it belongs.</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>Hello</p>     2022-08-27 08:08:21+00  2022-08-27 08:09:07.54688+00      2022-09-08 07:41:25.032477+00   DF      1
7       How to Check if a User is Logged In or Not in Django    how-to-check-if-a-user-is-logged-in-or-not-in-django    <p>In this article, we go over how to check if a user is logged in or not in Django. So, there&#39;s a few ways of doing this, but the way we will go over is by using the request object in Django.</p>\r\n\r\n<p>By calling&nbsp;request.user&nbsp;we are able to access the user that is currently logged in. We then can use the&nbsp;is_authenticated&nbsp;property to determine if a user is currently authenticated (logged into the account).</p>\r\n\r\n<p>So, we&#39;ll create a simple script that if a user is logged in, we will print, &quot;Logged in&quot;, and if a user is not logged in, we will print out, &quot;Not logged in&quot;</p>\r\n\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">def index(request):\r\n    if request.user.is_authenticated:\r\n        print(&quot;Logged in&quot;)\r\n    else:\r\n        print(&quot;Not logged in&quot;)\r\n</code></pre>\r\n<img src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" /><span style="background:url(&quot;https://dkibui.com/static/ckeditor/ckeditor/plugins/widget/images/handle.png&quot;) rgba(220, 220, 220, 0.5); left:0px; top:-15px"><img height="15" role="presentation" src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" title="Click and drag to move" width="15" /></span></div>\r\n</div>\r\n\r\n<p>So in this code, in our&nbsp;views.py&nbsp;file, we have a function called index, which is passed in the argument request.&nbsp;request.user&nbsp;references the user that is logged in (or not if not logged in). The property,&nbsp;is_authenticated&nbsp;then checks to see if the user is authenticated (logged in).</p>\r\n\r\n<p>If so, we print out, &quot;Logged in&quot;. If not, we print out, &quot;Not logged in&quot;. Of course, there are many other things you could do besides just print out these statements.</p>\r\n\r\n<p>If a user is logged in, we could render a template. If no one is logged in, we could render another template. Other things, we could do is if a user is logged in, we could render a template. If not, we could raise a 404 Page Not Found Error.</p>\r\n\r\n<p>Another thing we could do is if a user is logged in, we could render a template. If not, we could redirect the user to the login page.</p>\r\n\r\n<p>So there are several things that could be done based on whether a user is logged in or not.</p>    2022-08-18 15:06:20+00  2022-08-18 15:29:03.080801+00   2022-11-18 05:19:30.88593+00      DF      1
2       Python Dictionaries     python-dictionaries     <p>A&nbsp;dictionary&nbsp;is an abstract data structure that implements <em>key-value&nbsp;</em>type of data in Python. Dictionaries are also known as a hash tables or hash maps. In JavaScript they are called&nbsp;<em>objects&nbsp;</em>while in Golang they are&nbsp;<em>maps</em>.</p>\r\n\r\n<p>So what is <em>key-value</em> data type? Consider the table below, each country has a city associated with it. We say the country is a <em>key </em>and city is the <em>value. </em>This is a <em>key-value </em>representation of country to capital city. You could also represent capital city to country. You&#39;re free to decide what is the <em>key </em>and what is the <em>value</em>.</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><em>Country (key)</em></td>\r\n\t\t\t<td><em>Capital City (value)</em></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Kenya&nbsp;&nbsp;</td>\r\n\t\t\t<td>Nairobi</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Canada</td>\r\n\t\t\t<td>Ottawa</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>&nbsp;In a Python dictionary, this information is represented like below,</p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">capital_cities  = {\r\n&#39;Kenya&#39; : &#39;Nairobi&#39;, \r\n&#39;Canada&#39; : &#39;Ottawa&#39;\r\n}</code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>A dictionary key must be an immutable data type. In Python, integers, floats, strings, booleans and tuples are immutable. A tuple is a valid key only if all of its elements are immutable data types. If the tuple contains a set, dictionary or a list, it will result in TypeError. A dictionary value can be of any data type including another dictionary. If a dictionary has a dictionary as one of its values, we say the dictionary is nested.</p>\r\n\r\n<p>Now, let&#39;s look at the dictionary method. The dict() method is very versatile. The method accepts parameters either as;</p>\r\n\r\n<ul>\r\n\t<li>Keyword arguments or</li>\r\n\t<li>As an iterable&nbsp;containing keys and values. The iterable could be a list, a tuple or&nbsp;a<strong><em> set*</em></strong> containing keys and values. Remember sets are not ordered and therefore keys and values might be reversed in the resulting dictionary. You should not&nbsp;use a set.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Please note that when creating a dictionary using&nbsp;keyword arguments, the keys can only be a string or an underscore (_). Also, the keys are not in quotes. Remember that!</p>\r\n</blockquote>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs"># keyword argument\r\nexample2 = dict(Kenya = &#39;Nairobi&#39;, Canada = &#39;Ottawa&#39;,)\r\n\r\n# Using a list of tuples\r\nexample3 = dict([(&#39;Kenya&#39;,&#39;Nairobi&#39;),(&#39;Canada&#39;,&#39;Ottawa&#39;)])\r\n\r\n# Using a list of sets\r\nexample4 = dict([{&#39;Kenya&#39;,&#39;Nairobi&#39;},{&#39;Canada&#39;,&#39;Ottawa&#39;}])\r\n\r\n# Using a set of tuples\r\nexample5 = dict({(&#39;Kenya&#39;,&#39;Nairobi&#39;),(&#39;Canada&#39;,&#39;Ottawa&#39;)}) </code></pre>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" dir="ltr">\r\n\t<caption>\r\n\t<p>Key value pair in a table</p>\r\n\t</caption>\r\n\t<tbody>\r\n\t\t<tr>\r\n\t\t\t<td><strong>Country</strong></td>\r\n\t\t\t<td><strong>Capital city</strong></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Kenya</td>\r\n\t\t\t<td>Nairobi</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Canada</td>\r\n\t\t\t<td>Ottawa</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n\r\n<p>A dictionary is a data structure in Python used to store key value pair data. You might know dictionaries&nbsp;by other names like objects in JavaScript and associative arrays in PHP. They are also known as hash maps and hash tables in some programming languages.</p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div contenteditable="false" tabindex="-1">\r\n<pre data-widget="codeSnippet">\r\n<code class="language-python hljs">capital_cities = {\r\n    &#39;Kenya&#39; : &#39;Nairobi&#39;,\r\n    &#39;Canada&#39; : &#39;Ottawa&#39;,\r\n    &#39;Japan&#39; : &#39;Tokyo&#39;,\r\n    }</code></pre>\r\n<img src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" /><span style="background-image:url(https://dkibui.com/static/ckeditor/ckeditor/plugins/widget/images/handle.png); background:rgba(220,220,220,0.5); display:none"><img height="15" role="presentation" src="data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==" title="Click and drag to move" width="15" /></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>will learn everything you should know about Python dictionaries. A dictionary is a data structure in Python used to store key value pair data. You might know dictionaries&nbsp;by other names like objects in JavaScript and associative arrays in PHP. They are also known as hash maps and hash tables in some programming languages.</p>\r\n\r\n<p>............</p>\r\n\r\n<p>...................</p>\r\n\r\n<p>I am still adding more content for this post, be sure to check again later...</p>   2022-11-18 05:20:33+00  2022-08-13 10:13:47.097373+00   2022-11-18 05:30:58.602607+00     PB      1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1       2022-08-13 03:50:05.992611+00   1       Create a Python virtual environment     1       [{"added": {}}] 7       1
2       2022-08-13 10:12:37.92196+00    1       Create a Python virtual environment     2       [{"changed": {"fields": ["Body"]}}]     71
3       2022-08-13 10:13:47.119934+00   2       Python Dictionaries     1       [{"added": {}}] 7       1
4       2022-08-13 14:39:40.889054+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
5       2022-08-13 16:58:28.686758+00   3       General Python Knowledge        1       [{"added": {}}] 7       1
6       2022-08-13 16:59:20.389379+00   3       General Python Knowledge        2       [{"changed": {"fields": ["Body"]}}]     7       1
7       2022-08-13 16:59:53.422848+00   4       Understand how static and media files work in Django    1       [{"added": {}}] 7       1
8       2022-08-13 17:00:09.810706+00   4       Understand how static and media files work in Django    2       [{"changed": {"fields": ["Body"]}}]       7       1
9       2022-08-13 17:00:19.367184+00   4       Understand how static and media files work in Django    2       [{"changed": {"fields": ["Body", "Status"]}}]     7       1
10      2022-08-13 17:03:25.847189+00   5       How to Relate Users with Data from Database Tables in the Python Shell with Django      1[{"added": {}}]  7       1
11      2022-08-18 11:37:15.050404+00   1       Thank you for visiting. Here's a few things about me!   1       [{"added": {}}] 9       1
12      2022-08-18 11:38:24.506531+00   1       Thank you for visiting  2       [{"changed": {"fields": ["Title"]}}]    9       1
13      2022-08-18 11:38:34.604878+00   1       Thank you for visiting. 2       [{"changed": {"fields": ["Title"]}}]    9       1
14      2022-08-18 11:39:46.910859+00   1       Thank you for visiting. 2       [{"changed": {"fields": ["Body"]}}]     9       1
15      2022-08-18 11:43:56.625497+00   1       Thank you for visiting. 2       [{"changed": {"fields": ["Body"]}}]     9       1
16      2022-08-18 11:45:27.138432+00   3       General Python Knowledge        2       [{"changed": {"fields": ["Body", "Status"]}}]   71
17      2022-08-18 11:47:42.638741+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
18      2022-08-18 11:49:40.39226+00    2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
19      2022-08-18 11:51:43.688468+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
20      2022-08-18 11:52:11.353134+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
21      2022-08-18 12:06:51.145044+00   1       Create a Python virtual environment     2       [{"changed": {"fields": ["Body", "Publish"]}}]    7       1
22      2022-08-18 12:33:47.186963+00   1       Thank you for visiting. 2       [{"changed": {"fields": ["Body"]}}]     9       1
23      2022-08-18 12:41:18.271382+00   1       I am happy you're here so,      2       [{"changed": {"fields": ["Title"]}}]    9       1
24      2022-08-18 12:41:32.50169+00    1       I'm happy you're here so,       2       [{"changed": {"fields": ["Title"]}}]    9       1
25      2022-08-18 12:45:55.504176+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
26      2022-08-18 13:05:01.706853+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
27      2022-08-18 13:07:55.219714+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
28      2022-08-18 13:10:09.182448+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
29      2022-08-18 13:10:51.315942+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
30      2022-08-18 13:11:16.337963+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
31      2022-08-18 13:15:11.611468+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
32      2022-08-18 13:18:11.535552+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
33      2022-08-18 13:21:24.216409+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
34      2022-08-18 13:24:38.732555+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
35      2022-08-18 13:26:29.242878+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
36      2022-08-18 13:27:56.152966+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
37      2022-08-18 13:30:03.962957+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
38      2022-08-18 14:40:08.121958+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
39      2022-08-18 14:42:42.264269+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
40      2022-08-18 14:43:04.952956+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
41      2022-08-18 14:45:01.401811+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
42      2022-08-18 14:47:41.607296+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
43      2022-08-18 14:48:14.125585+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
44      2022-08-18 14:49:02.183155+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
45      2022-08-18 15:06:02.228868+00   6       How to Relate Users with Data from Database Tables in the Python Shell with Django      1[{"added": {}}]  7       1
46      2022-08-18 15:29:03.111545+00   7       How to Check if a User is Logged In or Not in Django    1       [{"added": {}}] 7       1
47      2022-08-18 15:47:17.245283+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
48      2022-08-18 15:49:44.578962+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
49      2022-08-18 15:53:00.395841+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
50      2022-08-18 15:53:44.968527+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
51      2022-08-18 15:54:18.829678+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
52      2022-08-18 15:55:36.406322+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
53      2022-08-18 15:55:39.375953+00   1       I'm happy you're here so,       2       []      9       1
54      2022-08-19 01:29:20.348984+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
55      2022-08-19 01:33:59.501261+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
56      2022-08-20 05:12:16.816659+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
57      2022-08-21 13:17:57.448941+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
58      2022-08-21 13:19:43.086061+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
59      2022-08-21 13:20:17.743702+00   1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
60      2022-08-21 13:21:19.011146+00   1       I'm happy you're here so,       2       []      9       1
61      2022-08-21 18:55:02.37454+00    1       I'm happy you're here so,       2       [{"changed": {"fields": ["Body"]}}]     9       1
62      2022-08-21 19:58:47.867316+00   1       I'm happy you're here so,       2       []      9       1
63      2022-08-27 08:09:07.57959+00    8       Object Oriented Programming or OOP in Python    1       [{"added": {}}] 7       1
64      2022-08-27 08:09:51.417007+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Title", "Slug"]}}]      7       1
65      2022-08-27 08:10:37.719331+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Status"]}}]   71
66      2022-08-29 09:53:48.34679+00    8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
67      2022-08-29 09:53:54.451797+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Status"]}}]   71
68      2022-08-29 09:54:31.153159+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
69      2022-08-29 09:55:28.777987+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
70      2022-08-29 09:55:42.59748+00    8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
71      2022-08-29 09:57:55.880774+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
72      2022-08-29 10:00:10.60538+00    8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
73      2022-08-29 10:05:15.463316+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
74      2022-08-29 10:06:36.966843+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
75      2022-08-29 10:07:01.120675+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
76      2022-08-29 10:13:15.918663+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
77      2022-08-29 10:13:29.955602+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
78      2022-08-29 10:15:43.114014+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
79      2022-08-29 11:59:06.508123+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
80      2022-08-29 12:00:49.573545+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
81      2022-08-29 12:03:19.125947+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
82      2022-08-29 12:04:10.254072+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
83      2022-08-29 12:04:28.756674+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
84      2022-08-29 12:28:45.486422+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
85      2022-08-29 12:54:55.147596+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
86      2022-08-29 12:57:30.617479+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
87      2022-08-29 12:59:00.449253+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
88      2022-08-29 13:03:54.503942+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Body"]}}]     71
89      2022-08-29 17:17:38.148253+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Status"]}}]   71
90      2022-09-08 07:37:03.214862+00   3       tips and tricks 3               10      1
91      2022-09-08 07:38:45.623007+00   3       General Python Knowledge        2       [{"changed": {"fields": ["Body", "Tags", "Status"]}}]     7       1
92      2022-09-08 07:39:18.101845+00   3       General Python Knowledge        2       [{"changed": {"fields": ["Body", "Tags"]}}]     71
93      2022-09-08 07:39:43.536732+00   11      tips and tricks 3               10      1
94      2022-09-08 07:40:16.145839+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Status"]}}]   71
95      2022-09-08 07:41:25.044773+00   8       Object Oriented Programming in Python   2       [{"changed": {"fields": ["Status"]}}]   71
96      2022-10-24 06:32:48.036551+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
97      2022-10-24 06:37:09.751768+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
98      2022-10-24 06:39:12.218201+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
99      2022-10-24 06:46:15.221059+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
100     2022-10-24 06:47:42.388211+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
101     2022-10-24 08:04:06.500282+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
102     2022-10-24 08:06:13.044119+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
103     2022-10-24 08:17:49.427331+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
104     2022-10-24 08:26:01.928811+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
105     2022-10-24 08:27:47.841264+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
106     2022-10-24 08:27:57.215827+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
107     2022-10-24 08:30:08.117205+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
108     2022-10-24 09:51:20.490413+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
109     2022-10-24 09:54:36.374377+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
110     2022-10-24 09:57:16.728811+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
111     2022-10-24 09:58:22.07873+00    2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
112     2022-10-24 12:26:09.632213+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
113     2022-10-24 12:26:48.088142+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
114     2022-10-24 12:30:35.690014+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
115     2022-10-24 12:33:00.470302+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
116     2022-10-24 12:39:24.468898+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
117     2022-10-24 12:40:49.357044+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
118     2022-10-24 12:43:16.318541+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
119     2022-10-24 12:44:49.419409+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
120     2022-10-24 12:45:10.332281+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
121     2022-10-24 12:45:45.562565+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
122     2022-10-24 12:45:56.967532+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
123     2022-10-24 12:48:48.654096+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
124     2022-10-24 12:50:36.989776+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
125     2022-10-24 12:53:27.134646+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
126     2022-10-24 13:03:15.806935+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
127     2022-10-24 13:03:48.787629+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
128     2022-10-24 13:04:20.387536+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
129     2022-10-24 13:06:00.8325+00     2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
130     2022-10-24 13:17:18.94723+00    2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
131     2022-10-24 13:29:27.262306+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
132     2022-10-24 13:46:14.728303+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
133     2022-10-24 13:52:08.628772+00   2       Python Dictionaries     2       []      7       1
134     2022-10-25 04:56:59.995246+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
135     2022-10-25 04:57:38.932203+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
136     2022-10-25 04:58:11.009902+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
137     2022-10-25 05:01:19.443622+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
138     2022-10-25 05:04:24.244171+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
139     2022-10-25 05:05:20.005608+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
140     2022-10-25 05:07:59.132913+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
141     2022-10-25 05:11:52.819659+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
142     2022-10-25 05:16:42.254359+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
143     2022-10-25 05:20:54.595197+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
144     2022-11-18 05:09:10.32083+00    2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
145     2022-11-18 05:16:51.238007+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
146     2022-11-18 05:17:31.096907+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
147     2022-11-18 05:18:51.297026+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
148     2022-11-18 05:18:53.422627+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
149     2022-11-18 05:19:30.902378+00   7       How to Check if a User is Logged In or Not in Django    2       [{"changed": {"fields": ["Body", "Status"]}}]     7       1
150     2022-11-18 05:20:35.508945+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body", "Publish"]}}]  7       1
151     2022-11-18 05:30:58.618742+00   2       Python Dictionaries     2       [{"changed": {"fields": ["Body"]}}]     7       1
152     2022-11-18 05:31:55.241133+00   1       Create a Python virtual environment     2       [{"changed": {"fields": ["Body"]}}]     71
153     2022-11-18 05:35:15.917607+00   1       Create a Python virtual environment     2       [{"changed": {"fields": ["Body"]}}]     71
154     2022-11-18 05:35:19.8375+00     1       Create a Python virtual environment     2       []      7       1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1       admin   logentry
2       auth    permission
3       auth    group
4       auth    user
5       contenttypes    contenttype
6       sessions        session
7       blog    post
8       blog    comment
9       about   aboutme
10      taggit  tag
11      taggit  taggeditem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1       about   0001_initial    2022-08-12 09:51:23.893458+00
2       about   0002_alter_aboutme_options      2022-08-12 09:51:23.89953+00
3       contenttypes    0001_initial    2022-08-12 09:51:23.909409+00
4       auth    0001_initial    2022-08-12 09:51:23.978164+00
5       admin   0001_initial    2022-08-12 09:51:23.99928+00
6       admin   0002_logentry_remove_auto_add   2022-08-12 09:51:24.010792+00
7       admin   0003_logentry_add_action_flag_choices   2022-08-12 09:51:24.020888+00
8       contenttypes    0002_remove_content_type_name   2022-08-12 09:51:24.046258+00
9       auth    0002_alter_permission_name_max_length   2022-08-12 09:51:24.056985+00
10      auth    0003_alter_user_email_max_length        2022-08-12 09:51:24.067106+00
11      auth    0004_alter_user_username_opts   2022-08-12 09:51:24.076935+00
12      auth    0005_alter_user_last_login_null 2022-08-12 09:51:24.090201+00
13      auth    0006_require_contenttypes_0002  2022-08-12 09:51:24.093967+00
14      auth    0007_alter_validators_add_error_messages        2022-08-12 09:51:24.104888+00
15      auth    0008_alter_user_username_max_length     2022-08-12 09:51:24.118988+00
16      auth    0009_alter_user_last_name_max_length    2022-08-12 09:51:24.129585+00
17      auth    0010_alter_group_name_max_length        2022-08-12 09:51:24.140685+00
18      auth    0011_update_proxy_permissions   2022-08-12 09:51:24.150811+00
19      auth    0012_alter_user_first_name_max_length   2022-08-12 09:51:24.161382+00
20      taggit  0001_initial    2022-08-12 09:51:24.194693+00
21      taggit  0002_auto_20150616_2121 2022-08-12 09:51:24.204087+00
22      taggit  0003_taggeditem_add_unique_index        2022-08-12 09:51:24.214215+00
23      taggit  0004_alter_taggeditem_content_type_alter_taggeditem_tag 2022-08-12 09:51:24.234411+00
24      blog    0001_initial    2022-08-12 09:51:24.301406+00
25      blog    0002_alter_comment_body_alter_post_body 2022-08-12 09:51:24.318464+00
26      sessions        0001_initial    2022-08-12 09:51:24.327837+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
xi5mms6hshc3th8o5vbnx4dd0yiu2yq0        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oMi7c:9PUtZA-ODy9k6NLD8L4sfyamoAqAwle6t5Wfbwucajg        2022-08-27 03:47:36.220513+00
9hcm7gi9d10y2rplyms3nb2nsnz5iux6        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oMnw7:w34Zo_LEHzy1VLizUDbUn2ZfKYwT2OUl0gf_iKQLxKY        2022-08-27 10:00:07.84326+00
z8lk30vhc6kumjsu4y2fo9lja2te05o1        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oMo4o:yNWC_JNre9hkWxJ_hX8zx0PhvAsUZS65eqWMqCH2ngI        2022-08-27 10:09:06.139772+00
bx6v9108ci65xccknjyomltn4ld8wxjx        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oOdou:uQuFNUvF-e6cnNBF1ulzedgI6JolS9yk_9QatEoq4XQ        2022-09-01 11:36:16.549811+00
r5vq93nmaxaeuqg8riay401qxv4netjy        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oOqkY:ltWV9NSjcRmrDtI1G1b4zJcwHIhM8gs_UqKL8Qftn6w        2022-09-02 01:24:38.017946+00
fo8uusnxul013wyi4nlp4i51kv9lydmo        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oRqrY:fNV1bFtrnZKSI83G6j26W5JFjlzdguGuYHspSNnDhlE        2022-09-10 08:08:16.935416+00
clf1qarmcjpax7wmcggzfpkq42m0dgj6        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1oWC5d:CqAn31nfNX-TMmcmBTXBVN-G9ymUDuU7OgaWzTzHtvQ        2022-09-22 07:36:45.912173+00
9bj559otullen78vshgtm9yu715hg73e        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1omqzL:8CjlH6E6u7FopX9y4OTFN8NC0e7r1wnEuZqsJJqiJ_Q        2022-11-07 06:31:07.002041+00
vy59kdg60d195uswtn2p4t4oi77snf0k        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1omr0n:pV4QfBtw0oJC3WE78W8a-4lH_rR2kUjVK528AAEKQL0        2022-11-07 06:32:37.563024+00
i2gfkubq1g8zfdeht1sx1eclaf1604oz        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1omr2S:Y6vjm3xO-rQCoeu2kAJoNTCPn1OV7ekLoGUikfzktDs        2022-11-07 06:34:20.471219+00
7qr9fz08qynylxkcb6rs97q9kxigf9ut        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1ovtau:BHqB40eYUkewqAuH-OjZMxfYb1Qv-SpTqPqunS9dD-c        2022-12-02 05:07:16.915189+00
xfjdbo9douedetnm074h20flntqwyawj        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1ovu0K:zQ4Qw1lZ9ZPnvJG1nN4bUPbf2cSyIp1hVFV8TLcTUmM        2022-12-02 05:33:32.792084+00
dg27nrref3h6xe3lykebwxzpseunbo11        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1ovu0o:0TN9-NAaEiVKKeZX9F6W8UDWAslzvHfsIBgEaLetp6w        2022-12-02 05:34:02.100932+00
65z6hekyg0wmpyw1gm38hqk6tvhxje0x        .eJxVjDsOwjAQBe_iGln-IpuSnjNYu941DiBbipMKcXcSKQW0b2beWyRYl5rWwXOaSFyEFqffDSE_ue2AHtDuXebelnlCuSvyoEPeOvHrerh_BxVG3WpWpAggq4xZlWCBGJzV5-CByaOJitCw0-jcJmHxzNFDtMU4rW0O4vMFH7g4-A:1ovu1Y:k4Zz96OFPqwQeN5SoS9Va4rNyk1dZZY2pR__1s4Ve6U        2022-12-02 05:34:48.246325+00
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
1       python  python
2       virtual environment     virtual-environment
4       authentication  authentication
5       django template django-template
6       models  models
7       django  django
8       database        database
9       django shell    django-shell
10      OOP     oop
12      tips & tricks   tips-tricks
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: dkibui
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1       1       7       1
2       1       7       2
3       2       7       1
4       3       7       1
6       4       7       4
7       4       7       5
8       4       7       6
9       4       7       7
10      5       7       8
11      5       7       9
12      5       7       6
13      6       7       8
14      6       7       9
15      6       7       6
16      7       7       1
17      7       7       4
18      7       7       7
19      8       7       1
20      8       7       10
22      3       7       12
\.


--
-- Name: about_aboutme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.about_aboutme_id_seq', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 8, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 154, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 12, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dkibui
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 22, true);


--
-- Name: about_aboutme about_aboutme_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.about_aboutme
    ADD CONSTRAINT about_aboutme_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_commen_created_0e6ed4_idx; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_commen_created_0e6ed4_idx ON public.blog_comment USING btree (created);


--
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_publish_bb7600_idx; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_post_publish_bb7600_idx ON public.blog_post USING btree (publish DESC);


--
-- Name: blog_post_slug_b95473f2; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: dkibui
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: dkibui
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--
