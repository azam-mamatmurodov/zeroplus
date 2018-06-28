--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO zeroplus;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO zeroplus;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO zeroplus;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO zeroplus;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO zeroplus;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO zeroplus;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: zeroplus
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


ALTER TABLE public.django_admin_log OWNER TO zeroplus;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO zeroplus;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO zeroplus;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO zeroplus;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO zeroplus;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO zeroplus;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO zeroplus;

--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO zeroplus;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO zeroplus;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO zeroplus;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO zeroplus;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO zeroplus;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO zeroplus;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO zeroplus;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO zeroplus;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO zeroplus;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO zeroplus;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);


ALTER TABLE public.filer_file OWNER TO zeroplus;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO zeroplus;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO zeroplus;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO zeroplus;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);


ALTER TABLE public.filer_folderpermission OWNER TO zeroplus;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO zeroplus;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_image (
    _height integer,
    _width integer,
    default_alt_text character varying(255),
    default_caption character varying(255),
    subject_location character varying(64) NOT NULL,
    file_ptr_id integer NOT NULL,
    date_taken timestamp with time zone,
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL
);


ALTER TABLE public.filer_image OWNER TO zeroplus;

--
-- Name: filer_thumbnailoption; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.filer_thumbnailoption OWNER TO zeroplus;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_thumbnailoption_id_seq OWNER TO zeroplus;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;


--
-- Name: main_banner; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_banner (
    id integer NOT NULL,
    "order" integer NOT NULL,
    banner_id integer
);


ALTER TABLE public.main_banner OWNER TO zeroplus;

--
-- Name: main_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_banner_id_seq OWNER TO zeroplus;

--
-- Name: main_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_banner_id_seq OWNED BY public.main_banner.id;


--
-- Name: main_banner_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_banner_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    master_id integer,
    body text,
    url character varying(60)
);


ALTER TABLE public.main_banner_translation OWNER TO zeroplus;

--
-- Name: main_banner_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_banner_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_banner_translation_id_seq OWNER TO zeroplus;

--
-- Name: main_banner_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_banner_translation_id_seq OWNED BY public.main_banner_translation.id;


--
-- Name: main_contact; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_contact (
    id integer NOT NULL,
    first_name character varying(60) NOT NULL,
    last_name character varying(60),
    email character varying(254) NOT NULL,
    subject character varying(120) NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.main_contact OWNER TO zeroplus;

--
-- Name: main_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_contact_id_seq OWNER TO zeroplus;

--
-- Name: main_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_contact_id_seq OWNED BY public.main_contact.id;


--
-- Name: main_menu; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_menu (
    id integer NOT NULL,
    "order" integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    mptt_level integer NOT NULL,
    parent_id integer,
    CONSTRAINT main_menu_lft_check CHECK ((lft >= 0)),
    CONSTRAINT main_menu_mptt_level_check CHECK ((mptt_level >= 0)),
    CONSTRAINT main_menu_rght_check CHECK ((rght >= 0)),
    CONSTRAINT main_menu_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.main_menu OWNER TO zeroplus;

--
-- Name: main_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_menu_id_seq OWNER TO zeroplus;

--
-- Name: main_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_menu_id_seq OWNED BY public.main_menu.id;


--
-- Name: main_menu_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_menu_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    slug character varying(60) NOT NULL,
    master_id integer
);


ALTER TABLE public.main_menu_translation OWNER TO zeroplus;

--
-- Name: main_menu_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_menu_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_menu_translation_id_seq OWNER TO zeroplus;

--
-- Name: main_menu_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_menu_translation_id_seq OWNED BY public.main_menu_translation.id;


--
-- Name: main_news; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_news (
    id integer NOT NULL,
    published_at timestamp with time zone NOT NULL,
    image_id integer
);


ALTER TABLE public.main_news OWNER TO zeroplus;

--
-- Name: main_news_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_news_id_seq OWNER TO zeroplus;

--
-- Name: main_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_news_id_seq OWNED BY public.main_news.id;


--
-- Name: main_news_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_news_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    slug character varying(60) NOT NULL,
    body text NOT NULL,
    master_id integer
);


ALTER TABLE public.main_news_translation OWNER TO zeroplus;

--
-- Name: main_news_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_news_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_news_translation_id_seq OWNER TO zeroplus;

--
-- Name: main_news_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_news_translation_id_seq OWNED BY public.main_news_translation.id;


--
-- Name: main_static; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_static (
    id integer NOT NULL,
    image_id integer
);


ALTER TABLE public.main_static OWNER TO zeroplus;

--
-- Name: main_static_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_static_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_static_id_seq OWNER TO zeroplus;

--
-- Name: main_static_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_static_id_seq OWNED BY public.main_static.id;


--
-- Name: main_static_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.main_static_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    slug character varying(60) NOT NULL,
    body text NOT NULL,
    master_id integer
);


ALTER TABLE public.main_static_translation OWNER TO zeroplus;

--
-- Name: main_static_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.main_static_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_static_translation_id_seq OWNER TO zeroplus;

--
-- Name: main_static_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.main_static_translation_id_seq OWNED BY public.main_static_translation.id;


--
-- Name: orders_cart; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.orders_cart (
    id integer NOT NULL,
    count integer NOT NULL,
    status boolean NOT NULL,
    total_price numeric(10,2) NOT NULL,
    order_id integer,
    product_id integer NOT NULL,
    session_key character varying(255)
);


ALTER TABLE public.orders_cart OWNER TO zeroplus;

--
-- Name: orders_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.orders_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_cart_id_seq OWNER TO zeroplus;

--
-- Name: orders_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.orders_cart_id_seq OWNED BY public.orders_cart.id;


--
-- Name: orders_order; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.orders_order (
    id integer NOT NULL,
    client_name character varying(60) NOT NULL,
    phone character varying(12) NOT NULL,
    shipping_address text NOT NULL,
    total_price numeric(10,2),
    created timestamp with time zone NOT NULL,
    state integer NOT NULL,
    order_unique_id character varying(120),
    products text,
    customer_id integer
);


ALTER TABLE public.orders_order OWNER TO zeroplus;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO zeroplus;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;


--
-- Name: products_brands; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_brands (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    category_id integer,
    logo_id integer
);


ALTER TABLE public.products_brands OWNER TO zeroplus;

--
-- Name: products_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_brands_id_seq OWNER TO zeroplus;

--
-- Name: products_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_brands_id_seq OWNED BY public.products_brands.id;


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_category (
    id integer NOT NULL,
    "order" integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    mptt_level integer NOT NULL,
    parent_id integer,
    CONSTRAINT products_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT products_category_mptt_level_check CHECK ((mptt_level >= 0)),
    CONSTRAINT products_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT products_category_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.products_category OWNER TO zeroplus;

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_id_seq OWNER TO zeroplus;

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products_category.id;


--
-- Name: products_category_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_category_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    slug character varying(50) NOT NULL,
    master_id integer
);


ALTER TABLE public.products_category_translation OWNER TO zeroplus;

--
-- Name: products_category_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_category_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_translation_id_seq OWNER TO zeroplus;

--
-- Name: products_category_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_category_translation_id_seq OWNED BY public.products_category_translation.id;


--
-- Name: products_color; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_color (
    id integer NOT NULL,
    color character varying(18) NOT NULL
);


ALTER TABLE public.products_color OWNER TO zeroplus;

--
-- Name: products_color_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_color_id_seq OWNER TO zeroplus;

--
-- Name: products_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_color_id_seq OWNED BY public.products_color.id;


--
-- Name: products_color_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_color_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    master_id integer
);


ALTER TABLE public.products_color_translation OWNER TO zeroplus;

--
-- Name: products_color_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_color_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_color_translation_id_seq OWNER TO zeroplus;

--
-- Name: products_color_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_color_translation_id_seq OWNED BY public.products_color_translation.id;


--
-- Name: products_favoriteproduct; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_favoriteproduct (
    id integer NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.products_favoriteproduct OWNER TO zeroplus;

--
-- Name: products_favoriteproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_favoriteproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_favoriteproduct_id_seq OWNER TO zeroplus;

--
-- Name: products_favoriteproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_favoriteproduct_id_seq OWNED BY public.products_favoriteproduct.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_product (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    description text,
    created_at date NOT NULL,
    available_in_stock boolean NOT NULL,
    is_recommended boolean NOT NULL,
    price numeric(10,2) NOT NULL,
    quantity integer NOT NULL,
    slug character varying(50),
    brand_id integer NOT NULL,
    category_id integer NOT NULL,
    owner_id integer NOT NULL,
    is_sale boolean NOT NULL
);


ALTER TABLE public.products_product OWNER TO zeroplus;

--
-- Name: products_product_colors; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_product_colors (
    id integer NOT NULL,
    product_id integer NOT NULL,
    color_id integer NOT NULL
);


ALTER TABLE public.products_product_colors OWNER TO zeroplus;

--
-- Name: products_product_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_product_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_colors_id_seq OWNER TO zeroplus;

--
-- Name: products_product_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_product_colors_id_seq OWNED BY public.products_product_colors.id;


--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO zeroplus;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: products_product_sizes; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_product_sizes (
    id integer NOT NULL,
    product_id integer NOT NULL,
    size_id integer NOT NULL
);


ALTER TABLE public.products_product_sizes OWNER TO zeroplus;

--
-- Name: products_product_sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_product_sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_sizes_id_seq OWNER TO zeroplus;

--
-- Name: products_product_sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_product_sizes_id_seq OWNED BY public.products_product_sizes.id;


--
-- Name: products_productimage; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_productimage (
    id integer NOT NULL,
    file_id integer,
    product_id integer NOT NULL
);


ALTER TABLE public.products_productimage OWNER TO zeroplus;

--
-- Name: products_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productimage_id_seq OWNER TO zeroplus;

--
-- Name: products_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_productimage_id_seq OWNED BY public.products_productimage.id;


--
-- Name: products_review; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_review (
    created_at timestamp with time zone NOT NULL,
    id integer NOT NULL,
    reviewer character varying(120) NOT NULL,
    reviewer_location character varying(120),
    subject character varying(60) NOT NULL,
    text text NOT NULL,
    is_approved boolean NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_review OWNER TO zeroplus;

--
-- Name: products_review_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_review_id_seq OWNER TO zeroplus;

--
-- Name: products_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_review_id_seq OWNED BY public.products_review.id;


--
-- Name: products_sale; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_sale (
    id integer NOT NULL,
    percent integer NOT NULL
);


ALTER TABLE public.products_sale OWNER TO zeroplus;

--
-- Name: products_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_sale_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_sale_id_seq OWNER TO zeroplus;

--
-- Name: products_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_sale_id_seq OWNED BY public.products_sale.id;


--
-- Name: products_size; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_size (
    id integer NOT NULL
);


ALTER TABLE public.products_size OWNER TO zeroplus;

--
-- Name: products_size_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_size_id_seq OWNER TO zeroplus;

--
-- Name: products_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_size_id_seq OWNED BY public.products_size.id;


--
-- Name: products_size_translation; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.products_size_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(60) NOT NULL,
    master_id integer
);


ALTER TABLE public.products_size_translation OWNER TO zeroplus;

--
-- Name: products_size_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.products_size_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_size_translation_id_seq OWNER TO zeroplus;

--
-- Name: products_size_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.products_size_translation_id_seq OWNED BY public.products_size_translation.id;


--
-- Name: users_customer; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.users_customer (
    id integer NOT NULL,
    address text,
    user_id integer NOT NULL
);


ALTER TABLE public.users_customer OWNER TO zeroplus;

--
-- Name: users_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.users_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customer_id_seq OWNER TO zeroplus;

--
-- Name: users_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.users_customer_id_seq OWNED BY public.users_customer.id;


--
-- Name: users_partners; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.users_partners (
    id integer NOT NULL,
    title character varying(60) NOT NULL,
    link character varying(60) NOT NULL,
    logo_id integer NOT NULL
);


ALTER TABLE public.users_partners OWNER TO zeroplus;

--
-- Name: users_partners_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.users_partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_partners_id_seq OWNER TO zeroplus;

--
-- Name: users_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.users_partners_id_seq OWNED BY public.users_partners.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    username character varying(150) NOT NULL,
    phone character varying(12) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    image_id integer
);


ALTER TABLE public.users_user OWNER TO zeroplus;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO zeroplus;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO zeroplus;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO zeroplus;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: zeroplus
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO zeroplus;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: zeroplus
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO zeroplus;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zeroplus
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: filer_clipboard id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);


--
-- Name: filer_clipboarditem id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);


--
-- Name: filer_file id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);


--
-- Name: filer_folder id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);


--
-- Name: filer_folderpermission id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);


--
-- Name: filer_thumbnailoption id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);


--
-- Name: main_banner id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner ALTER COLUMN id SET DEFAULT nextval('public.main_banner_id_seq'::regclass);


--
-- Name: main_banner_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner_translation ALTER COLUMN id SET DEFAULT nextval('public.main_banner_translation_id_seq'::regclass);


--
-- Name: main_contact id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_contact ALTER COLUMN id SET DEFAULT nextval('public.main_contact_id_seq'::regclass);


--
-- Name: main_menu id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu ALTER COLUMN id SET DEFAULT nextval('public.main_menu_id_seq'::regclass);


--
-- Name: main_menu_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu_translation ALTER COLUMN id SET DEFAULT nextval('public.main_menu_translation_id_seq'::regclass);


--
-- Name: main_news id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news ALTER COLUMN id SET DEFAULT nextval('public.main_news_id_seq'::regclass);


--
-- Name: main_news_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news_translation ALTER COLUMN id SET DEFAULT nextval('public.main_news_translation_id_seq'::regclass);


--
-- Name: main_static id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static ALTER COLUMN id SET DEFAULT nextval('public.main_static_id_seq'::regclass);


--
-- Name: main_static_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static_translation ALTER COLUMN id SET DEFAULT nextval('public.main_static_translation_id_seq'::regclass);


--
-- Name: orders_cart id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_cart ALTER COLUMN id SET DEFAULT nextval('public.orders_cart_id_seq'::regclass);


--
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products_brands id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_brands ALTER COLUMN id SET DEFAULT nextval('public.products_brands_id_seq'::regclass);


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category ALTER COLUMN id SET DEFAULT nextval('public.products_category_id_seq'::regclass);


--
-- Name: products_category_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category_translation ALTER COLUMN id SET DEFAULT nextval('public.products_category_translation_id_seq'::regclass);


--
-- Name: products_color id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color ALTER COLUMN id SET DEFAULT nextval('public.products_color_id_seq'::regclass);


--
-- Name: products_color_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color_translation ALTER COLUMN id SET DEFAULT nextval('public.products_color_translation_id_seq'::regclass);


--
-- Name: products_favoriteproduct id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_favoriteproduct ALTER COLUMN id SET DEFAULT nextval('public.products_favoriteproduct_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: products_product_colors id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_colors ALTER COLUMN id SET DEFAULT nextval('public.products_product_colors_id_seq'::regclass);


--
-- Name: products_product_sizes id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_sizes ALTER COLUMN id SET DEFAULT nextval('public.products_product_sizes_id_seq'::regclass);


--
-- Name: products_productimage id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_productimage ALTER COLUMN id SET DEFAULT nextval('public.products_productimage_id_seq'::regclass);


--
-- Name: products_review id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_review ALTER COLUMN id SET DEFAULT nextval('public.products_review_id_seq'::regclass);


--
-- Name: products_sale id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_sale ALTER COLUMN id SET DEFAULT nextval('public.products_sale_id_seq'::regclass);


--
-- Name: products_size id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size ALTER COLUMN id SET DEFAULT nextval('public.products_size_id_seq'::regclass);


--
-- Name: products_size_translation id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size_translation ALTER COLUMN id SET DEFAULT nextval('public.products_size_translation_id_seq'::regclass);


--
-- Name: users_customer id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_customer ALTER COLUMN id SET DEFAULT nextval('public.users_customer_id_seq'::regclass);


--
-- Name: users_partners id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_partners ALTER COLUMN id SET DEFAULT nextval('public.users_partners_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add source	6	add_source
17	Can change source	6	change_source
18	Can delete source	6	delete_source
19	Can add thumbnail	7	add_thumbnail
20	Can change thumbnail	7	change_thumbnail
21	Can delete thumbnail	7	delete_thumbnail
22	Can add thumbnail dimensions	8	add_thumbnaildimensions
23	Can change thumbnail dimensions	8	change_thumbnaildimensions
24	Can delete thumbnail dimensions	8	delete_thumbnaildimensions
25	Can add clipboard	9	add_clipboard
26	Can change clipboard	9	change_clipboard
27	Can delete clipboard	9	delete_clipboard
28	Can add clipboard item	10	add_clipboarditem
29	Can change clipboard item	10	change_clipboarditem
30	Can delete clipboard item	10	delete_clipboarditem
31	Can add file	11	add_file
32	Can change file	11	change_file
33	Can delete file	11	delete_file
34	Can add Folder	12	add_folder
35	Can change Folder	12	change_folder
36	Can delete Folder	12	delete_folder
37	Can use directory listing	12	can_use_directory_listing
38	Can add folder permission	13	add_folderpermission
39	Can change folder permission	13	change_folderpermission
40	Can delete folder permission	13	delete_folderpermission
41	Can add thumbnail option	14	add_thumbnailoption
42	Can change thumbnail option	14	change_thumbnailoption
43	Can delete thumbnail option	14	delete_thumbnailoption
44	Can add image	15	add_image
45	Can change image	15	change_image
46	Can delete image	15	delete_image
47	Can add User	16	add_user
48	Can change User	16	change_user
49	Can delete User	16	delete_user
50	Can add customer	17	add_customer
51	Can change customer	17	change_customer
52	Can delete customer	17	delete_customer
53	Can add Partner	18	add_partners
54	Can change Partner	18	change_partners
55	Can delete Partner	18	delete_partners
56	Can add banner	19	add_banner
57	Can change banner	19	change_banner
58	Can delete banner	19	delete_banner
59	Can add menu	21	add_menu
60	Can change menu	21	change_menu
61	Can delete menu	21	delete_menu
62	Can add News	23	add_news
63	Can change News	23	change_news
64	Can delete News	23	delete_news
65	Can add static	25	add_static
66	Can change static	25	change_static
67	Can delete static	25	delete_static
68	Can add Brand	27	add_brands
69	Can change Brand	27	change_brands
70	Can delete Brand	27	delete_brands
71	Can add Category	28	add_category
72	Can change Category	28	change_category
73	Can delete Category	28	delete_category
74	Can add favorite product	30	add_favoriteproduct
75	Can change favorite product	30	change_favoriteproduct
76	Can delete favorite product	30	delete_favoriteproduct
77	Can add Product	31	add_product
78	Can change Product	31	change_product
79	Can delete Product	31	delete_product
80	Can add product image	32	add_productimage
81	Can change product image	32	change_productimage
82	Can delete product image	32	delete_productimage
83	Can add review	33	add_review
84	Can change review	33	change_review
85	Can delete review	33	delete_review
86	Can add Cart item	34	add_cart
87	Can change Cart item	34	change_cart
88	Can delete Cart item	34	delete_cart
89	Can add order	35	add_order
90	Can change order	35	change_order
91	Can delete order	35	delete_order
92	Can add color	36	add_color
93	Can change color	36	change_color
94	Can delete color	36	delete_color
95	Can add size	38	add_size
96	Can change size	38	change_size
97	Can delete size	38	delete_size
98	Can add contact	40	add_contact
99	Can change contact	40	change_contact
100	Can delete contact	40	delete_contact
101	Can add sale	41	add_sale
102	Can change sale	41	change_sale
103	Can delete sale	41	delete_sale
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 103, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-06-23 12:14:02.562828+05	1	Главная	1	[{"added": {}}]	21	1
2	2018-06-23 12:14:14.91403+05	2	Продукты	1	[{"added": {}}]	21	1
3	2018-06-23 12:14:28.22357+05	3	О нас	1	[{"added": {}}]	21	1
4	2018-06-23 12:14:47.985245+05	4	Контакты	1	[{"added": {}}]	21	1
5	2018-06-23 12:16:48.882221+05	5	Мужчины	1	[{"added": {}}]	21	1
6	2018-06-23 12:16:56.467681+05	5	Мужчины	2	[{"changed": {"fields": ["parent"]}}]	21	1
7	2018-06-23 12:17:27.486483+05	6	Дети	1	[{"added": {}}]	21	1
8	2018-06-23 12:18:21.097741+05	1	Дети	1	[{"added": {}}]	28	1
9	2018-06-23 12:18:32.184336+05	2	Мужчины	1	[{"added": {}}]	28	1
10	2018-06-23 12:26:16.129634+05	1	Good brand	1	[{"added": {}}]	27	1
11	2018-06-23 12:26:37.040294+05	2	Good 2  brand	1	[{"added": {}}]	27	1
12	2018-06-23 15:39:05.402174+05	1	A'zam	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	16	1
13	2018-06-23 15:39:27.702359+05	1	Test product name	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
14	2018-06-23 15:54:53.173559+05	2	GOod doleaqas	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
15	2018-06-23 15:55:39.917157+05	3	Ulasansjakjsn	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
16	2018-06-23 15:56:30.837515+05	4	Hels product	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
17	2018-06-23 16:01:59.003266+05	5	Paslt	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
18	2018-06-23 16:12:10.797933+05	6	Gessor	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
19	2018-06-23 16:13:04.30934+05	5	Paslt	2	[{"added": {"name": "product image", "object": "ProductImage object"}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}]	31	1
20	2018-06-23 16:14:13.038175+05	4	Hels product	2	[{"added": {"name": "product image", "object": "ProductImage object"}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}]	31	1
21	2018-06-23 16:15:00.075176+05	3	Ulasansjakjsn	2	[{"added": {"name": "product image", "object": "ProductImage object"}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}]	31	1
22	2018-06-23 16:15:43.817225+05	2	Good doleaqas	2	[{"changed": {"fields": ["name"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}]	31	1
23	2018-06-23 16:16:25.646111+05	1	Test product name	2	[{"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}, {"changed": {"name": "product image", "object": "ProductImage object", "fields": ["file"]}}]	31	1
24	2018-06-23 16:17:39.216627+05	7	Served product from Goop	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
25	2018-06-23 16:25:42.662309+05	8	Helo product	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
26	2018-06-23 16:26:35.717879+05	9	Opastik	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
27	2018-06-23 16:28:06.893902+05	10	Yuilas	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
28	2018-06-23 16:28:57.477589+05	11	Lizzani	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
29	2018-06-23 16:29:38.914126+05	12	Kossoa	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
30	2018-06-23 16:30:32.435079+05	13	H. Rackham	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}, {"added": {"name": "product image", "object": "ProductImage object"}}]	31	1
31	2018-06-23 18:02:42.130173+05	1	Color object	1	[{"added": {}}]	36	1
32	2018-06-23 18:03:18.344045+05	2	Color object	1	[{"added": {}}]	36	1
33	2018-06-23 18:13:10.687129+05	13	H. Rackham	2	[]	31	1
34	2018-06-23 18:13:18.616058+05	13	H. Rackham	2	[{"changed": {"fields": ["colors"]}}]	31	1
35	2018-06-23 18:13:27.478333+05	10	Yuilas	2	[{"changed": {"fields": ["colors"]}}]	31	1
36	2018-06-23 18:15:39.139856+05	1	XL	1	[{"added": {}}]	38	1
37	2018-06-23 18:15:43.751787+05	2	XX	1	[{"added": {}}]	38	1
38	2018-06-23 18:15:47.846737+05	3	L	1	[{"added": {}}]	38	1
39	2018-06-23 18:16:31.029219+05	4	44	1	[{"added": {}}]	38	1
40	2018-06-23 18:16:36.07666+05	5	46	1	[{"added": {}}]	38	1
41	2018-06-23 18:16:40.69714+05	6	48	1	[{"added": {}}]	38	1
42	2018-06-23 18:16:44.672264+05	7	50	1	[{"added": {}}]	38	1
43	2018-06-23 18:16:48.787371+05	8	52	1	[{"added": {}}]	38	1
44	2018-06-23 18:16:53.218047+05	9	54	1	[{"added": {}}]	38	1
45	2018-06-23 18:16:56.583991+05	10	56	1	[{"added": {}}]	38	1
46	2018-06-23 18:16:59.895429+05	11	58	1	[{"added": {}}]	38	1
47	2018-06-23 18:17:18.628508+05	12	60	1	[{"added": {}}]	38	1
48	2018-06-23 18:17:21.945207+05	13	62	1	[{"added": {}}]	38	1
49	2018-06-23 18:17:25.791417+05	14	64	1	[{"added": {}}]	38	1
50	2018-06-23 18:17:29.465913+05	15	66	1	[{"added": {}}]	38	1
51	2018-06-23 18:17:33.196058+05	16	68	1	[{"added": {}}]	38	1
52	2018-06-23 18:21:00.16044+05	13	H. Rackham	2	[{"changed": {"fields": ["colors", "sizes"]}}]	31	1
53	2018-06-23 18:49:40.672863+05	13	H. Rackham	2	[{"changed": {"fields": ["colors"]}}]	31	1
54	2018-06-24 17:12:10.608125+05	3	Мужские костюмы	1	[{"added": {}}]	28	1
55	2018-06-24 17:12:18.183726+05	4	Мужские тройка	1	[{"added": {}}]	28	1
56	2018-06-24 17:12:31.27684+05	5	Классический костюм	1	[{"added": {}}]	28	1
57	2018-06-24 17:12:42.241948+05	6	Пиджак	1	[{"added": {}}]	28	1
58	2018-06-24 17:12:47.888936+05	7	Киттел	1	[{"added": {}}]	28	1
59	2018-06-24 17:12:54.448145+05	8	Куртка	1	[{"added": {}}]	28	1
60	2018-06-24 17:13:00.272865+05	9	Пальто	1	[{"added": {}}]	28	1
61	2018-06-24 17:13:51.762429+05	10	Мальчики	1	[{"added": {}}]	28	1
62	2018-06-24 17:14:01.026152+05	11	Девочки	1	[{"added": {}}]	28	1
63	2018-06-24 17:14:14.947924+05	12	Школьники	1	[{"added": {}}]	28	1
64	2018-06-24 17:14:30.091594+05	13	Подростковый	1	[{"added": {}}]	28	1
65	2018-06-24 17:15:10.294852+05	7	Доставка	1	[{"added": {}}]	21	1
66	2018-06-24 18:08:28.585582+05	13	H. Rackham	2	[{"changed": {"fields": ["category"]}}]	31	1
67	2018-06-24 18:08:28.625394+05	12	Kossoa	2	[{"changed": {"fields": ["category"]}}]	31	1
68	2018-06-24 18:08:28.658198+05	11	Lizzani	2	[{"changed": {"fields": ["category"]}}]	31	1
69	2018-06-24 18:08:28.691464+05	10	Yuilas	2	[{"changed": {"fields": ["category"]}}]	31	1
70	2018-06-24 18:08:28.724774+05	9	Opastik	2	[{"changed": {"fields": ["category"]}}]	31	1
71	2018-06-24 18:08:28.757904+05	8	Helo product	2	[{"changed": {"fields": ["category"]}}]	31	1
72	2018-06-24 18:08:28.791214+05	7	Served product from Goop	2	[{"changed": {"fields": ["category"]}}]	31	1
73	2018-06-24 18:08:28.824421+05	6	Gessor	2	[{"changed": {"fields": ["category"]}}]	31	1
74	2018-06-24 18:08:28.874114+05	5	Paslt	2	[{"changed": {"fields": ["category"]}}]	31	1
75	2018-06-24 18:08:28.913138+05	4	Hels product	2	[{"changed": {"fields": ["category"]}}]	31	1
76	2018-06-24 18:08:28.946625+05	3	Ulasansjakjsn	2	[{"changed": {"fields": ["category"]}}]	31	1
77	2018-06-24 18:08:28.979571+05	2	Good doleaqas	2	[{"changed": {"fields": ["category"]}}]	31	1
78	2018-06-24 18:08:29.012684+05	1	Test product name	2	[{"changed": {"fields": ["category"]}}]	31	1
79	2018-06-24 18:21:30.849409+05	5	Мужчины	3		21	1
80	2018-06-24 18:21:36.141909+05	6	Дети	3		21	1
81	2018-06-24 18:25:07.914649+05	7	Доставка	2	[{"changed": {"fields": ["order"]}}]	21	1
82	2018-06-24 18:25:07.942929+05	4	Контакты	2	[{"changed": {"fields": ["order"]}}]	21	1
83	2018-06-24 18:25:07.965243+05	3	О нас	2	[{"changed": {"fields": ["order"]}}]	21	1
84	2018-06-24 18:25:07.987403+05	2	Продукты	2	[{"changed": {"fields": ["order"]}}]	21	1
85	2018-06-24 18:25:08.009332+05	1	Главная	2	[{"changed": {"fields": ["order"]}}]	21	1
86	2018-06-24 18:28:21.24159+05	2	Продукты	2	[{"changed": {"fields": ["slug"]}}]	21	1
87	2018-06-24 18:33:19.467399+05	1	О нас	1	[{"added": {}}]	25	1
88	2018-06-24 18:36:23.852252+05	2	Доставка	1	[{"added": {}}]	25	1
89	2018-06-24 18:36:46.712056+05	3	Контакты	1	[{"added": {}}]	25	1
90	2018-06-24 18:38:51.769228+05	None	None	3		21	1
91	2018-06-25 15:05:30.501315+05	4	Контакты	2	[{"changed": {"fields": ["slug"]}}]	21	1
92	2018-06-25 15:05:42.465484+05	3	Контакты	3		25	1
93	2018-06-26 14:28:18.558736+05	1	Sale object	1	[{"added": {}}]	41	1
94	2018-06-26 14:28:25.093703+05	1	Sale object	2	[]	41	1
95	2018-06-26 14:28:30.749409+05	1	Sale object	3		41	1
96	2018-06-26 14:28:36.340355+05	2	Sale object	1	[{"added": {}}]	41	1
97	2018-06-26 14:52:46.802912+05	13	H. Rackham	2	[{"changed": {"fields": ["is_sale"]}}]	31	1
98	2018-06-28 15:39:47.416379+05	2	Sale object	2	[{"changed": {"fields": ["percent"]}}]	41	1
99	2018-06-28 20:42:57.401902+05	1	Cicero's version of Liber Primus	1	[{"added": {}}]	19	1
100	2018-06-28 20:52:08.494126+05	2	Baby clothes	1	[{"added": {}}]	19	1
101	2018-06-28 20:52:23.232505+05	1	Cicero's version of Liber Primus	2	[{"changed": {"fields": ["body"]}}]	19	1
102	2018-06-28 21:02:26.496627+05	1	Cicero's version of Liber Primus	2	[{"changed": {"fields": ["url"]}}]	19	1
103	2018-06-28 21:02:45.424273+05	2	Baby clothes	2	[{"changed": {"fields": ["url"]}}]	19	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 103, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	easy_thumbnails	source
7	easy_thumbnails	thumbnail
8	easy_thumbnails	thumbnaildimensions
9	filer	clipboard
10	filer	clipboarditem
11	filer	file
12	filer	folder
13	filer	folderpermission
14	filer	thumbnailoption
15	filer	image
16	users	user
17	users	customer
18	users	partners
19	main	banner
20	main	bannertranslation
21	main	menu
22	main	menutranslation
23	main	news
24	main	newstranslation
25	main	static
26	main	statictranslation
27	products	brands
28	products	category
29	products	categorytranslation
30	products	favoriteproduct
31	products	product
32	products	productimage
33	products	review
34	orders	cart
35	orders	order
36	products	color
37	products	colortranslation
38	products	size
39	products	sizetranslation
40	main	contact
41	products	sale
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 41, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-06-23 02:52:12.395083+05
2	contenttypes	0002_remove_content_type_name	2018-06-23 02:52:12.46068+05
3	auth	0001_initial	2018-06-23 02:52:12.983102+05
4	auth	0002_alter_permission_name_max_length	2018-06-23 02:52:13.037096+05
5	auth	0003_alter_user_email_max_length	2018-06-23 02:52:13.065441+05
6	auth	0004_alter_user_username_opts	2018-06-23 02:52:13.100643+05
7	auth	0005_alter_user_last_login_null	2018-06-23 02:52:13.133551+05
8	auth	0006_require_contenttypes_0002	2018-06-23 02:52:13.148147+05
9	auth	0007_alter_validators_add_error_messages	2018-06-23 02:52:13.177578+05
10	auth	0008_alter_user_username_max_length	2018-06-23 02:52:13.21126+05
11	filer	0001_initial	2018-06-23 02:52:13.99219+05
12	users	0001_initial	2018-06-23 02:52:14.946464+05
13	admin	0001_initial	2018-06-23 02:52:15.177849+05
14	admin	0002_logentry_remove_auto_add	2018-06-23 02:52:15.232963+05
15	easy_thumbnails	0001_initial	2018-06-23 02:52:15.809861+05
16	easy_thumbnails	0002_thumbnaildimensions	2018-06-23 02:52:15.954077+05
17	filer	0002_auto_20180623_0252	2018-06-23 02:52:16.74153+05
18	main	0001_initial	2018-06-23 02:52:19.157183+05
19	products	0001_initial	2018-06-23 02:52:20.320321+05
20	orders	0001_initial	2018-06-23 02:52:20.575792+05
21	orders	0002_auto_20180623_0252	2018-06-23 02:52:20.919841+05
22	products	0002_auto_20180623_0252	2018-06-23 02:52:21.883007+05
23	sessions	0001_initial	2018-06-23 02:52:22.059422+05
24	products	0003_remove_product_model	2018-06-23 12:28:08.801219+05
25	products	0004_auto_20180623_1750	2018-06-23 17:51:01.048955+05
26	products	0005_remove_color_product	2018-06-23 17:56:58.160877+05
27	products	0006_product_colors	2018-06-23 17:58:55.461236+05
28	products	0007_auto_20180623_1759	2018-06-23 17:59:16.702981+05
29	products	0008_auto_20180623_1813	2018-06-23 18:13:05.244977+05
30	products	0009_auto_20180623_1814	2018-06-23 18:14:09.419214+05
31	products	0010_product_sizes	2018-06-23 18:14:40.571434+05
32	main	0002_auto_20180624_1833	2018-06-24 18:33:11.471502+05
33	main	0003_remove_static_created_at	2018-06-24 18:35:59.468946+05
34	orders	0003_auto_20180625_1710	2018-06-25 17:11:02.198348+05
35	users	0002_auto_20180625_1710	2018-06-25 17:11:02.324271+05
36	orders	0004_cart_session_key	2018-06-25 17:12:32.90522+05
37	main	0004_contact	2018-06-26 13:51:50.602027+05
38	main	0005_contact_created_at	2018-06-26 13:53:42.659974+05
39	products	0011_product_sale_price	2018-06-26 14:07:38.934226+05
40	products	0012_product_is_sale	2018-06-26 14:09:57.821259+05
41	products	0013_remove_product_sale_price	2018-06-26 14:23:47.184859+05
42	products	0014_sale	2018-06-26 14:23:47.28572+05
43	main	0006_bannertranslation_body	2018-06-28 20:50:39.913874+05
44	main	0007_auto_20180628_2101	2018-06-28 21:01:29.504134+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
racpolfk5scb7a4x6sashybbmrujc801	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-07 02:53:23.187752+05
hmqu5rus9fbzcbti52arm2tosj68fhpw	YmZmOTMxODdjOGRkMTQ0MTczZGRkZjFmMDA0MTQ4ZjRmNjg5YTM5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1IiwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOm51bGx9	2018-07-07 12:26:30.910958+05
nly3vn66tffftyldn1xi6viioif0ym3x	M2ZmODc5ZTBlMzNhNWU3NWQzMmFiOWE0NWI0NjZiYTgzZDcyNWM2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1IiwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOiIxIn0=	2018-07-07 16:30:25.033911+05
onmwta6wnakd161zkbqebwuoc24f1kmd	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-08 18:00:03.39376+05
k0mv2jgk3f68a6ihphvn9kywz873n3zk	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-10 13:54:02.076573+05
8hs3q6yaih3ryt3npmosvf4aqa9kgh6e	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-11 17:00:10.835318+05
yrsuc38t8xw191r4bc1ihwb9v62ivshh	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-12 15:39:37.266751+05
rk13mzyfrpkatxn0ga8i150c4g9wa5o2	ZmY4M2M2NjUyMWFmODkyNWE2YmFkNGMxODQ1NTU1MTZmNGNjZmMzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjMxZjI0MDI4NTc2MmYwNjA0ZTMzMDczNDQ1MjQxODg2NjIxYjQ1In0=	2018-07-12 20:41:27.364745+05
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
1	f9bde26a1556cd667f742bd34ec7c55e	filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg	2018-06-23 12:26:03.089735+05
2	f9bde26a1556cd667f742bd34ec7c55e	filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg	2018-06-23 12:26:03.170332+05
3	f9bde26a1556cd667f742bd34ec7c55e	filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png	2018-06-23 12:26:03.430535+05
5	f9bde26a1556cd667f742bd34ec7c55e	filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg	2018-06-23 12:26:04.105092+05
4	f9bde26a1556cd667f742bd34ec7c55e	filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg	2018-06-23 12:26:04.1192+05
6	f9bde26a1556cd667f742bd34ec7c55e	filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg	2018-06-23 12:26:04.837584+05
7	f9bde26a1556cd667f742bd34ec7c55e	filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg	2018-06-23 12:26:05.307292+05
8	f9bde26a1556cd667f742bd34ec7c55e	filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg	2018-06-23 12:26:05.433771+05
10	f9bde26a1556cd667f742bd34ec7c55e	filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg	2018-06-23 12:26:05.985594+05
9	f9bde26a1556cd667f742bd34ec7c55e	filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg	2018-06-23 12:26:06.436045+05
30	f9bde26a1556cd667f742bd34ec7c55e	filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg	2018-06-28 21:09:52.430965+05
23	f9bde26a1556cd667f742bd34ec7c55e	filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg	2018-06-28 21:09:53.645712+05
12	f9bde26a1556cd667f742bd34ec7c55e	filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg	2018-06-23 18:46:12.054787+05
37	f9bde26a1556cd667f742bd34ec7c55e	filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg	2018-06-28 20:51:40.945543+05
17	f9bde26a1556cd667f742bd34ec7c55e	filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg	2018-06-23 17:37:50.125081+05
34	f9bde26a1556cd667f742bd34ec7c55e	filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg	2018-06-28 21:08:45.921863+05
18	f9bde26a1556cd667f742bd34ec7c55e	filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg	2018-06-28 21:08:47.019819+05
19	f9bde26a1556cd667f742bd34ec7c55e	filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg	2018-06-23 16:10:14.549044+05
20	f9bde26a1556cd667f742bd34ec7c55e	filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg	2018-06-23 16:10:20.443308+05
11	f9bde26a1556cd667f742bd34ec7c55e	filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg	2018-06-24 18:05:23.573101+05
28	f9bde26a1556cd667f742bd34ec7c55e	filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg	2018-06-28 21:08:48.186961+05
24	f9bde26a1556cd667f742bd34ec7c55e	filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg	2018-06-23 16:10:26.475708+05
27	f9bde26a1556cd667f742bd34ec7c55e	filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg	2018-06-28 21:09:02.547707+05
33	f9bde26a1556cd667f742bd34ec7c55e	filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg	2018-06-24 18:05:24.851569+05
26	f9bde26a1556cd667f742bd34ec7c55e	filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg	2018-06-23 16:10:32.535311+05
25	f9bde26a1556cd667f742bd34ec7c55e	filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg	2018-06-28 21:09:44.360009+05
13	f9bde26a1556cd667f742bd34ec7c55e	filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg	2018-06-28 21:10:17.7948+05
31	f9bde26a1556cd667f742bd34ec7c55e	filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg	2018-06-23 16:10:38.60787+05
35	f9bde26a1556cd667f742bd34ec7c55e	filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg	2018-06-28 21:10:21.356794+05
32	f9bde26a1556cd667f742bd34ec7c55e	filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg	2018-06-23 16:10:44.413518+05
29	f9bde26a1556cd667f742bd34ec7c55e	filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg	2018-06-23 18:33:42.530594+05
22	f9bde26a1556cd667f742bd34ec7c55e	filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg	2018-06-23 19:10:05.432715+05
14	f9bde26a1556cd667f742bd34ec7c55e	filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg	2018-06-24 18:27:58.451305+05
15	f9bde26a1556cd667f742bd34ec7c55e	filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg	2018-06-23 18:33:49.971168+05
21	f9bde26a1556cd667f742bd34ec7c55e	filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg	2018-06-23 18:33:51.087222+05
36	f9bde26a1556cd667f742bd34ec7c55e	filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png	2018-06-28 20:42:36.447299+05
16	f9bde26a1556cd667f742bd34ec7c55e	filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg	2018-06-28 21:09:45.760475+05
\.


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 37, true);


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
1	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.141112+05	1
2	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.18972+05	2
3	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.252198+05	1
4	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.310154+05	2
5	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.358378+05	1
6	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.41702+05	2
7	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.444154+05	1
8	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.450812+05	3
9	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.523332+05	2
10	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.563782+05	1
11	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.645248+05	2
12	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:03.71182+05	3
13	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.043598+05	3
14	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.115389+05	5
15	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.148364+05	4
16	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.2806+05	3
17	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.322386+05	5
18	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.378421+05	4
19	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.511709+05	3
20	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.519794+05	5
21	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.631419+05	4
22	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.76974+05	5
23	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.858319+05	6
24	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:04.925603+05	4
25	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.008257+05	5
26	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.038667+05	6
27	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.215046+05	6
28	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.220055+05	4
29	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.326691+05	7
30	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.399098+05	6
31	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.443796+05	8
32	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.461478+05	7
33	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.516848+05	8
34	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.568703+05	8
36	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.603186+05	7
39	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.789577+05	7
41	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.012023+05	7
218	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 19:09:49.153508+05	35
219	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 19:09:50.42707+05	13
220	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 19:09:51.534162+05	27
221	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 19:09:52.751761+05	18
37	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.639423+05	8
38	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.735763+05	8
222	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 19:10:05.460218+05	22
40	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.997567+05	10
42	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.093602+05	10
43	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.193722+05	10
44	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.287311+05	10
45	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.40299+05	10
46	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:06.451792+05	9
47	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:07.050758+05	9
48	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:07.597323+05	9
49	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:08.144142+05	9
50	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:08.738587+05	9
51	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:00.873079+05	12
54	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:01.964724+05	12
57	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:03.283193+05	12
60	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:04.571524+05	12
63	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:05.963648+05	12
223	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-24 16:25:43.102036+05	25
224	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-24 16:25:44.486026+05	13
225	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-24 16:25:45.82564+05	16
226	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-24 16:25:47.010176+05	35
233	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:32.91817+05	25
234	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:34.136211+05	16
235	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:35.166136+05	30
236	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:36.317381+05	34
237	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:37.546124+05	28
238	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:38.77516+05	35
239	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:40.092332+05	13
240	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__200x200_q85_crop_subsampling-2.jpg	2018-06-27 19:03:41.254822+05	27
251	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png__16x16_q85_crop_subsampling-2_upscale.png	2018-06-28 20:42:36.471805+05	36
252	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png__32x32_q85_crop_subsampling-2_upscale.png	2018-06-28 20:42:36.730907+05	36
253	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png__48x48_q85_crop_subsampling-2_upscale.png	2018-06-28 20:42:36.874749+05	36
254	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png__64x64_q85_crop_subsampling-2_upscale.png	2018-06-28 20:42:37.019731+05	36
255	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png__180x180_q85_crop_subsampling-2_upscale.png	2018-06-28 20:42:37.202477+05	36
52	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:00.950875+05	11
55	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:02.267333+05	11
58	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:03.527331+05	11
61	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:04.918808+05	11
64	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:06.481618+05	11
227	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 16:59:15.961624+05	18
241	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:03:59.342902+05	25
242	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:00.527512+05	16
243	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:01.637748+05	30
244	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:02.734008+05	34
245	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:03.851992+05	28
246	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:04.870549+05	35
247	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:05.96659+05	13
248	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:04:06.985188+05	27
256	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-28 20:51:40.961462+05	37
257	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-28 20:51:41.214048+05	37
258	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-28 20:51:41.433658+05	37
259	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-28 20:51:41.631603+05	37
260	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-28 20:51:41.861054+05	37
53	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:01.183362+05	13
56	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:02.494028+05	13
59	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:03.775385+05	13
62	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:05.052599+05	13
65	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:06.485399+05	13
228	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 18:05:22.405444+05	28
229	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 18:05:23.590323+05	11
230	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 18:05:25.207857+05	33
249	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:07:33.666715+05	23
250	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__140x140_q85_crop_subsampling-2.jpg	2018-06-27 19:07:34.773853+05	18
261	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:08:45.942842+05	34
262	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:08:47.050219+05	18
263	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:08:48.223706+05	28
66	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:07.949284+05	14
70	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:09.286886+05	14
73	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:10.553615+05	14
76	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:11.824786+05	14
79	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:13.182498+05	14
231	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 18:27:57.123593+05	27
232	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-24 18:27:58.474716+05	14
264	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:09:02.570563+05	27
67	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:08.041886+05	15
69	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:09.184051+05	15
72	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:10.34876+05	15
75	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:11.610199+05	15
78	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:12.87359+05	15
265	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__570x322_q85_crop_subsampling-2.jpg	2018-06-28 21:09:44.392916+05	25
266	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__570x322_q85_crop_subsampling-2.jpg	2018-06-28 21:09:45.932107+05	16
68	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:08.157718+05	16
71	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:09.395136+05	16
74	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:10.739079+05	16
77	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:11.955764+05	16
80	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:13.287384+05	16
267	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:09:52.452527+05	30
268	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__261x244_q85_crop_subsampling-2.jpg	2018-06-28 21:09:53.671551+05	23
81	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:14.268613+05	17
84	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:15.449437+05	17
87	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:16.619213+05	17
91	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:17.830896+05	17
94	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:19.084233+05	17
269	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__570x322_q85_crop_subsampling-2.jpg	2018-06-28 21:10:17.815151+05	13
82	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:14.423525+05	18
85	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:15.557793+05	18
88	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:16.712963+05	18
90	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:17.811843+05	18
93	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:18.99626+05	18
270	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__570x322_q85_crop_subsampling-2.jpg	2018-06-28 21:10:21.765281+05	35
83	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:14.567479+05	19
86	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:15.656086+05	19
89	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:16.810722+05	19
92	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:17.995139+05	19
95	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:19.169771+05	19
96	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:20.470719+05	20
101	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:21.702434+05	20
104	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:22.925083+05	20
107	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:24.069334+05	20
110	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:25.299524+05	20
97	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:20.479727+05	22
99	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:21.597601+05	22
102	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:22.678313+05	22
105	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:23.812347+05	22
108	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:24.995065+05	22
98	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:20.560256+05	21
100	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:21.699354+05	21
103	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:22.828248+05	21
106	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:23.951858+05	21
109	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:25.129256+05	21
111	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:26.313851+05	23
114	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:27.483391+05	23
117	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:28.626066+05	23
120	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:29.778098+05	23
123	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:30.99136+05	23
112	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:26.490948+05	24
115	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:27.613401+05	24
118	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:28.762045+05	24
122	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:29.889421+05	24
125	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:31.129557+05	24
113	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:26.612839+05	25
116	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:27.62573+05	25
119	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:28.766778+05	25
121	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:29.886482+05	25
124	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:31.041973+05	25
126	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:32.424777+05	27
129	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:33.572687+05	27
132	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:34.687363+05	27
135	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:35.809962+05	27
138	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:37.023097+05	27
127	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:32.557524+05	26
130	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:33.693251+05	26
133	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:34.856156+05	26
136	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:36.008162+05	26
139	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:37.337341+05	26
128	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:32.679214+05	28
131	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:33.800082+05	28
134	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:34.95926+05	28
137	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:36.064028+05	28
140	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:37.343868+05	28
141	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:38.303139+05	29
144	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:39.463465+05	29
147	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:40.632333+05	29
150	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:41.772031+05	29
153	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:42.998091+05	29
142	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:38.580094+05	30
145	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:39.670052+05	30
148	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:40.768688+05	30
151	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:41.900748+05	30
154	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:43.077983+05	30
143	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:38.679674+05	31
146	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:39.77122+05	31
149	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:40.863331+05	31
152	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:42.002109+05	31
155	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:43.13543+05	31
156	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:44.441+05	33
159	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:45.617984+05	33
162	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:46.757207+05	33
165	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:47.892014+05	33
168	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:49.087596+05	33
157	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:44.458641+05	32
161	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:45.749698+05	32
164	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:46.983824+05	32
167	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:48.150675+05	32
170	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:49.363179+05	32
158	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:44.469614+05	34
160	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:45.634613+05	34
163	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:46.854205+05	34
166	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:48.018319+05	34
169	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:49.175655+05	34
171	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:50.292594+05	35
172	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:51.340849+05	35
173	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:52.45239+05	35
174	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:53.508784+05	35
175	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 16:10:54.622188+05	35
176	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__210x0_q85_subsampling-2_upscale.jpg	2018-06-23 16:11:17.956528+05	16
177	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__50x50_q85_subsampling-2.jpg	2018-06-23 16:44:21.541542+05	25
178	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__50x50_q85_subsampling-2.jpg	2018-06-23 16:44:22.528115+05	17
179	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__50x50_q85_subsampling-2.jpg	2018-06-23 16:44:23.53596+05	23
180	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__50x50_q85_subsampling-2.jpg	2018-06-23 16:44:24.465787+05	30
181	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__250x250_q85_subsampling-2.jpg	2018-06-23 16:45:07.860029+05	25
182	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__250x250_q85_subsampling-2.jpg	2018-06-23 16:45:08.94484+05	17
183	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__250x250_q85_subsampling-2.jpg	2018-06-23 16:45:09.985322+05	23
184	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__250x250_q85_subsampling-2.jpg	2018-06-23 16:45:10.992882+05	30
185	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 16:46:40.825473+05	25
186	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 16:46:41.910091+05	17
187	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 16:46:42.973279+05	23
188	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 16:46:44.013988+05	30
189	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__350x350_q85_crop_subsampling-2.jpg	2018-06-23 16:48:42.34095+05	25
190	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__350x350_q85_crop_subsampling-2.jpg	2018-06-23 16:48:43.503369+05	17
191	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__350x350_q85_crop_subsampling-2.jpg	2018-06-23 16:48:44.809611+05	23
192	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__350x350_q85_crop_subsampling-2.jpg	2018-06-23 16:48:45.89412+05	30
193	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__450x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:22.095693+05	25
194	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__450x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:23.269222+05	17
195	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__450x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:24.409478+05	23
196	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__450x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:25.616336+05	30
197	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__4580x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:47.888943+05	25
198	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:49.007014+05	25
199	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:50.136177+05	17
200	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:51.365219+05	23
201	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 17:37:52.616032+05	30
202	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 18:29:16.436509+05	16
203	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 18:29:17.499344+05	34
204	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__250x250_q85_crop_subsampling-2.jpg	2018-06-23 18:29:18.596711+05	28
205	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__250x250_q85_sharpen_subsampling-2.jpg	2018-06-23 18:30:10.601765+05	16
206	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg__250x250_q85_sharpen_subsampling-2.jpg	2018-06-23 18:30:11.653476+05	25
207	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__250x250_q85_sharpen_subsampling-2.jpg	2018-06-23 18:30:12.771618+05	34
208	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg__250x250_q85_sharpen_subsampling-2.jpg	2018-06-23 18:30:13.823247+05	28
209	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg__250x250_q85_sharpen_subsampling-2.jpg	2018-06-23 18:30:14.930569+05	30
210	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:41.2325+05	34
211	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:42.549901+05	29
212	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:47.621329+05	16
213	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:48.883372+05	13
214	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:49.990515+05	15
215	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:33:51.108607+05	21
216	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:46:10.76067+05	35
217	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg__480x350_q85_crop_subsampling-2.jpg	2018-06-23 18:46:12.07823+05	12
35	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2018-06-23 12:26:05.597851+05	6
\.


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 270, true);


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
1	1
\.


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, true);


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
1	filer_public/63/b5/63b5987e-7633-4318-bd8c-4f8069f93ba5/leones-fondos-de-pantalla-hd-fotosdelanaturaleza-4-1024x640.jpg	180555	6131b6dec8dfb208d0a1c86cbedffcfd6a402f2c	f	leones-fondos-de-pantalla-hd-Fotosdelanaturaleza-4-1024x640.jpg		\N	2018-06-23 12:26:02.878842+05	2018-06-23 12:26:02.878904+05	t	\N	1	15
2	filer_public/ae/a8/aea8d783-2a77-4792-b7de-689e4315fadb/lion.jpg	259289	d7677fe4c45bdacc4fa32155aaf59ea5cfe19112	f	lion.jpg		\N	2018-06-23 12:26:03.033185+05	2018-06-23 12:26:03.033245+05	t	\N	1	15
3	filer_public/af/1f/af1f28e0-3459-43e5-b406-37388f525379/wire2.png	1499704	c3f1333e91cbdb29555cead242be7d66a57f2864	f	wire2.png		\N	2018-06-23 12:26:03.125415+05	2018-06-23 12:26:03.12549+05	t	\N	1	15
4	filer_public/2a/0e/2a0e0dca-def7-4627-a6ca-96e771dee6fb/earth_by_n4u2k.jpg	1104687	b45bae4a337c582bb7638f2e987709269d4b22ff	f	earth_by_n4u2k.jpg		\N	2018-06-23 12:26:03.784396+05	2018-06-23 12:26:03.784443+05	t	\N	1	15
5	filer_public/35/60/35602d28-2aac-4267-9e21-2afbe759dde2/seo-fon.jpg	160700	40cc3022d29d71cfe3df12fee1519cce096b6bf0	f	seo-fon.jpg		\N	2018-06-23 12:26:03.852545+05	2018-06-23 12:26:03.852591+05	t	\N	1	15
6	filer_public/b7/07/b7073f1e-d468-4042-94b1-0691a9ca8a54/hmk1.jpg	79663	1e9af0761d939181f62d1eb4325af175db5aaa20	f	hmk1.jpg		\N	2018-06-23 12:26:04.678797+05	2018-06-23 12:26:04.678852+05	t	\N	1	15
7	filer_public/16/a0/16a0771a-e661-4714-9c8e-3ff2c0eaa34c/featured48.jpg	118909	7fe2ac7407616a8266aef08b6443d4adebdecd70	f	featured48.jpg		\N	2018-06-23 12:26:05.151736+05	2018-06-23 12:26:05.153908+05	t	\N	1	15
8	filer_public/20/38/20385e77-661e-46c4-b63b-5713475325cf/c1287d5e869f02ad2195001a3c27648e-backgrounds-wallpapers-hd-wallpaper_1.jpg	45166	002315c08453f38b8bf5a4077035d1899ec15a19	f	c1287d5e869f02ad2195001a3c27648e--backgrounds-wallpapers-hd-wallpaper (1).jpg		\N	2018-06-23 12:26:05.363213+05	2018-06-23 12:26:05.363283+05	t	\N	1	15
9	filer_public/58/69/586962ac-279e-4e7e-9874-1cd2d13df24c/vgjc50u.jpg	905268	f1c864bb39cd2eef9be92e278cf629e11b63caa1	f	VGjc50U.jpg		\N	2018-06-23 12:26:05.80054+05	2018-06-23 12:26:05.800605+05	t	\N	1	15
10	filer_public/d3/24/d3249a95-12e2-413b-86be-c4c4dd2249a4/awesome-rain-wallpaper_0.jpg	412886	c9e3b35a1a5f4c5c65598729e3872bb9b2477745	f	awesome-rain-wallpaper_0.jpg		\N	2018-06-23 12:26:05.873335+05	2018-06-23 12:26:05.873421+05	t	\N	1	15
11	filer_public/ec/77/ec7724df-efac-4762-8adb-bdb7fcd19dd7/stylish-man-on-phone_4460x4460.jpg	1160140	6ce39c19e184695b66410e27b5500ce4f3900455	f	stylish-man-on-phone_4460x4460.jpg		\N	2018-06-23 16:09:59.71048+05	2018-06-23 16:09:59.710544+05	t	1	1	15
12	filer_public/29/a9/29a93f57-5614-421e-ab5f-da0077111370/man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg	748663	511b6152a6c8fe94a08364a0966bcfc7939e84ed	f	man-adjusts-blue-tuxedo-bowtie_4460x4460.jpg		\N	2018-06-23 16:09:59.758142+05	2018-06-23 16:09:59.758186+05	t	1	1	15
13	filer_public/9e/09/9e094392-3320-4143-b217-e9870098546a/businessman-working-on-phone_4460x4460.jpg	2964433	3bc75b2c1ba12d12368f344bab19d42093f0df54	f	businessman-working-on-phone_4460x4460.jpg		\N	2018-06-23 16:09:59.783802+05	2018-06-23 16:09:59.783862+05	t	1	1	15
14	filer_public/6d/ad/6dad1ffa-7a4c-4544-a60f-17c7e49cd758/man-of-luxury-celebrates_4460x4460.jpg	2293230	fb8d76580dcfd12390c5c6046b346cc09f5733ed	f	man-of-luxury-celebrates_4460x4460.jpg		\N	2018-06-23 16:10:06.525957+05	2018-06-23 16:10:06.526018+05	t	1	1	15
15	filer_public/6c/d6/6cd6b8c2-eff5-4156-80cc-4b9fab0ca8a1/man-fixes-shirt-cuff_4460x4460.jpg	1070904	5252eeedc9c5a0cc373312ef96774e84ac665258	f	man-fixes-shirt-cuff_4460x4460.jpg		\N	2018-06-23 16:10:06.77351+05	2018-06-23 16:10:06.773551+05	t	1	1	15
16	filer_public/98/9f/989f3bca-0ac0-4d06-97a9-bc6fe2d0448c/black-white-wrist-watches_4460x4460.jpg	3102659	332b554b5930c6f5b3facf1410e63456394ab234	f	black-white-wrist-watches_4460x4460.jpg		\N	2018-06-23 16:10:06.85787+05	2018-06-23 16:10:06.857946+05	t	1	1	15
17	filer_public/b5/e9/b5e93eb3-b9c0-479d-b40f-6e2c6aec9adc/mens-style_4460x4460.jpg	1921312	231f0d43178c679b03f1e0303396d9698b84ba0f	f	mens-style_4460x4460.jpg		\N	2018-06-23 16:10:13.070025+05	2018-06-23 16:10:13.070082+05	t	1	1	15
18	filer_public/d4/9f/d49f3d11-340e-4b48-b409-f63ab856b0c6/man-looking-down-in-suit_4460x4460.jpg	1060605	76b5a72e0fbc969984373b86f3991a54fb5ee80c	f	man-looking-down-in-suit_4460x4460.jpg		\N	2018-06-23 16:10:13.354435+05	2018-06-23 16:10:13.354507+05	t	1	1	15
19	filer_public/70/b0/70b0735d-4c8f-43c2-a13b-a3f4d80fa4b3/three-piece-suit_4460x4460.jpg	2024916	d88b7c32254f15f4564cee4d00ee9928557cd446	f	three-piece-suit_4460x4460.jpg		\N	2018-06-23 16:10:13.498929+05	2018-06-23 16:10:13.498974+05	t	1	1	15
20	filer_public/34/74/3474412a-1898-498a-a710-23237ef13502/tie-clip_4460x4460.jpg	1965142	09e524f3dc0de200fe9c36e53bd6c76956c29fd8	f	tie-clip_4460x4460.jpg		\N	2018-06-23 16:10:19.242948+05	2018-06-23 16:10:19.243025+05	t	1	1	15
21	filer_public/16/ba/16ba83cb-0be3-4e05-a4da-4c5fd8f3fcff/man-talking-on-cellphone_4460x4460.jpg	1185872	76626de1291b3e0a4704d4f436ccccffb2023a36	f	man-talking-on-cellphone_4460x4460.jpg		\N	2018-06-23 16:10:19.367489+05	2018-06-23 16:10:19.367553+05	t	1	1	15
22	filer_public/3b/85/3b85be49-9b8c-4e37-b301-41d0061e289d/professional-man-smiling_4460x4460.jpg	754852	94349ce540d21cd09fdc7bbe8b37bf498a42f7d6	f	professional-man-smiling_4460x4460.jpg		\N	2018-06-23 16:10:19.398575+05	2018-06-23 16:10:19.398644+05	t	1	1	15
23	filer_public/d6/7e/d67eb067-0068-419a-8c87-023c535ebf34/mens-stylish-formalwear_4460x4460.jpg	1334731	40ac676f021a9f66333690723ae25ec2d073ef68	f	mens-stylish-formalwear_4460x4460.jpg		\N	2018-06-23 16:10:25.15786+05	2018-06-23 16:10:25.157919+05	t	1	1	15
24	filer_public/e1/d0/e1d064c0-f33a-48a2-bed4-beccea37b6ca/suit-and-tie_4460x4460.jpg	1708245	0c352e9933e9bfcad036c3d6a080b43e7f76e26d	f	suit-and-tie_4460x4460.jpg		\N	2018-06-23 16:10:25.385895+05	2018-06-23 16:10:25.385959+05	t	1	1	15
25	filer_public/39/4a/394a7341-3694-4deb-b987-48838513feba/businessman-on-smartphone_4460x4460.jpg	830824	9700073e3fff8902f9e0f464a3d8c9751beaade8	f	businessman-on-smartphone_4460x4460.jpg		\N	2018-06-23 16:10:25.511583+05	2018-06-23 16:10:25.511654+05	t	1	1	15
26	filer_public/36/fc/36fcbc16-137c-4d8e-9d52-affc2d34ad04/wedding-photography-bride-groom_4460x4460.jpg	1967489	03a4a0707365972c255413536a9b78646cf01fe3	f	wedding-photography-bride-groom_4460x4460.jpg		\N	2018-06-23 16:10:31.259963+05	2018-06-23 16:10:31.260017+05	t	1	1	15
27	filer_public/13/18/1318aeac-74c7-4177-9149-00bcc6ffcd51/mens-grey-black-suit_4460x4460_1.jpg	974558	e6f4f0ae44217c03ecb51bd391c881f38dc4d9b4	f	mens-grey-black-suit_4460x4460 (1).jpg		\N	2018-06-23 16:10:31.26175+05	2018-06-23 16:10:31.261816+05	t	1	1	15
28	filer_public/b6/6a/b66ae889-4dd7-4b16-b5b1-9275ce240f38/stylish-man-in-bow-tie_4460x4460.jpg	1826884	f72470c6223b6b6ec9a3194370095f7262e7e8db	f	stylish-man-in-bow-tie_4460x4460.jpg		\N	2018-06-23 16:10:31.472116+05	2018-06-23 16:10:31.472167+05	t	1	1	15
29	filer_public/53/bf/53bfff3a-63fb-471e-90fb-cce42f42494f/mans-hands-lean-on-ledge_4460x4460.jpg	1111397	ab03953e9ba483815bd90c35ef5d042b670733b3	f	mans-hands-lean-on-ledge_4460x4460.jpg		\N	2018-06-23 16:10:37.177626+05	2018-06-23 16:10:37.177686+05	t	1	1	15
30	filer_public/da/96/da96ee12-d3d4-43ab-9283-db3e5f9dd6ee/mens-suit-watch_4460x4460_1.jpg	903539	51d80d1f9716ebefa545ed6d0df5b899b754cc33	f	mens-suit-watch_4460x4460 (1).jpg		\N	2018-06-23 16:10:37.506528+05	2018-06-23 16:10:37.506584+05	t	1	1	15
31	filer_public/c4/b9/c4b97913-fb2b-40c9-a3e2-f2a4fd2d299f/white-faced-watch_4460x4460.jpg	1570780	6afb763109490329e926e20f96b7d5fb5b1a3316	f	white-faced-watch_4460x4460.jpg		\N	2018-06-23 16:10:37.53423+05	2018-06-23 16:10:37.5343+05	t	1	1	15
32	filer_public/4a/b8/4ab8258a-f96e-4358-ad91-8ae83e300947/mens-business-fashion_4460x4460.jpg	1756661	7bc7d5ab3ef38331d1f7cbbad9f5e470341f54c5	f	mens-business-fashion_4460x4460.jpg		\N	2018-06-23 16:10:43.203904+05	2018-06-23 16:10:43.203973+05	t	1	1	15
33	filer_public/64/58/64580bfa-a399-4caf-80b8-350f84186059/mens-suit-watch_4460x4460.jpg	903539	51d80d1f9716ebefa545ed6d0df5b899b754cc33	f	mens-suit-watch_4460x4460.jpg		\N	2018-06-23 16:10:43.355305+05	2018-06-23 16:10:43.355388+05	t	1	1	15
34	filer_public/1b/f9/1bf9e97d-1300-43d1-9fe4-fd84c03c34d1/mens-grey-black-suit_4460x4460.jpg	974558	e6f4f0ae44217c03ecb51bd391c881f38dc4d9b4	f	mens-grey-black-suit_4460x4460.jpg		\N	2018-06-23 16:10:43.442232+05	2018-06-23 16:10:43.442316+05	t	1	1	15
35	filer_public/c9/2a/c92aae3a-f271-46c6-a5ca-2192879d9a1c/mens-watch-and-ring_4460x4460.jpg	1256126	3c9be1d07deec80d24230685c15214160925f486	f	mens-watch-and-ring_4460x4460.jpg		\N	2018-06-23 16:10:49.251813+05	2018-06-23 16:10:49.251891+05	t	1	1	15
36	filer_public/5f/3d/5f3d5185-259c-432e-a2bf-4e9c5c38e0f6/hero-background.png	698237	01edcc03ac17f0cb45d2f6b000cbeab358ec9a78	f	hero-background.png		\N	2018-06-28 20:42:36.144034+05	2018-06-28 20:42:36.144102+05	t	\N	1	15
37	filer_public/12/9c/129ccccb-7afd-4005-bfa2-b972856e0f10/kid-2185539_1920.jpg	361519	f7747926a1188d3832bff17327ff2dd9843574d1	f	kid-2185539_1920.jpg		\N	2018-06-28 20:51:40.730385+05	2018-06-28 20:51:40.730427+05	t	\N	1	15
\.


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 37, true);


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
1	Products	2018-06-23 16:09:18.75042+05	2018-06-23 16:09:18.750483+05	2018-06-23 16:09:18.75052+05	1	2	1	0	1	\N
\.


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, true);


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_image (_height, _width, default_alt_text, default_caption, subject_location, file_ptr_id, date_taken, author, must_always_publish_author_credit, must_always_publish_copyright) FROM stdin;
640	1024	\N	\N		1	2018-06-23 12:26:02.813726+05	\N	f	f
1200	1900	\N	\N		2	2018-06-23 12:26:03.004356+05	\N	f	f
1080	1920	\N	\N		3	2018-06-23 12:26:03.103976+05	\N	f	f
1050	1680	\N	\N		4	2018-06-23 12:26:03.722289+05	\N	f	f
1213	2000	\N	\N		5	2018-06-23 12:26:03.81788+05	\N	f	f
1080	1920	\N	\N		6	2018-06-23 12:26:04.658516+05	\N	f	f
960	1684	\N	\N		7	2018-06-23 12:26:05.134461+05	\N	f	f
414	736	\N	\N		8	2018-06-23 12:26:05.352+05	\N	f	f
2278	3430	\N	\N		9	2018-06-23 12:26:05.779448+05	\N	f	f
683	1024	\N	\N		10	2018-06-23 12:26:05.856501+05	\N	f	f
2975	4460	\N	\N		11	2018-06-23 16:09:59.676545+05	\N	f	f
2975	4460	\N	\N		12	2018-06-23 16:09:59.706492+05	\N	f	f
2973	4460	\N	\N		13	2018-06-23 16:09:59.771196+05	\N	f	f
2975	4460	\N	\N		14	2018-06-23 16:10:06.499042+05	\N	f	f
2975	4460	\N	\N		15	2018-06-23 16:10:06.758723+05	\N	f	f
4460	2975	\N	\N		16	2018-06-23 16:10:06.785172+05	\N	f	f
2975	4460	\N	\N		17	2018-06-23 16:10:13.056218+05	\N	f	f
4460	2975	\N	\N		18	2018-06-23 16:10:13.333473+05	\N	f	f
2975	4460	\N	\N		19	2018-06-23 16:10:13.48534+05	\N	f	f
2975	4460	\N	\N		20	2018-06-23 16:10:19.188287+05	\N	f	f
2973	4460	\N	\N		21	2018-06-23 16:10:19.272824+05	\N	f	f
2973	4460	\N	\N		22	2018-06-23 16:10:19.368811+05	\N	f	f
4460	2975	\N	\N		23	2018-06-23 16:10:25.140878+05	\N	f	f
2975	4460	\N	\N		24	2018-06-23 16:10:25.368233+05	\N	f	f
2973	4460	\N	\N		25	2018-06-23 16:10:25.49908+05	\N	f	f
2974	4460	\N	\N		26	2018-06-23 16:10:31.225538+05	\N	f	f
4460	2975	\N	\N		27	2018-06-23 16:10:31.232742+05	\N	f	f
2975	4460	\N	\N		28	2018-06-23 16:10:31.437532+05	\N	f	f
4460	2975	\N	\N		29	2018-06-23 16:10:37.164233+05	\N	f	f
4459	2974	\N	\N		30	2018-06-23 16:10:37.479873+05	\N	f	f
2975	4460	\N	\N		31	2018-06-23 16:10:37.517346+05	\N	f	f
2975	4460	\N	\N		32	2018-06-23 16:10:43.185945+05	\N	f	f
4459	2974	\N	\N		33	2018-06-23 16:10:43.328727+05	\N	f	f
4460	2975	\N	\N		34	2018-06-23 16:10:43.365459+05	\N	f	f
2975	4460	\N	\N		35	2018-06-23 16:10:49.237006+05	\N	f	f
659	1159	\N	\N		36	2018-06-28 20:42:35.979978+05	\N	f	f
1281	1920	\N	\N		37	2018-06-28 20:51:40.716863+05	\N	f	f
\.


--
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- Data for Name: main_banner; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_banner (id, "order", banner_id) FROM stdin;
1	1	36
2	2	37
\.


--
-- Name: main_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_banner_id_seq', 2, true);


--
-- Data for Name: main_banner_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_banner_translation (id, language_code, name, master_id, body, url) FROM stdin;
1	ru	Cicero's version of Liber Primus	1	<p>Most of its text is made up from sections 1.10.32&ndash;3 of Cicero&#39;s De<br />\r\nfinibus bonorum et malorum (On the Boundaries of Goods and Evils;</p>	/ru/products/malchiki/kossoa/
2	ru	Baby clothes	2	<p>Most of its text is made up from sections 1.10.32&ndash;3 of Cicero&#39;s De<br />\r\nfinibus bonorum et malorum (On the Boundaries of Goods and Evils;</p>	/ru/products/podrostkovyj/good-doleaqas/
\.


--
-- Name: main_banner_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_banner_translation_id_seq', 2, true);


--
-- Data for Name: main_contact; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_contact (id, first_name, last_name, email, subject, text, created_at) FROM stdin;
1	A'zam	Mamatmurodov	azam.mamatmurodov@gmail.com	Hello, Zeroplus	Hello, my name is A'zam, I 'm from Uzbekistan	2018-06-26 14:04:22.482278+05
\.


--
-- Name: main_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_contact_id_seq', 1, true);


--
-- Data for Name: main_menu; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_menu (id, "order", lft, rght, tree_id, mptt_level, parent_id) FROM stdin;
7	4	1	2	5	0	\N
3	3	1	2	3	0	\N
2	2	1	2	2	0	\N
4	5	1	2	4	0	\N
\.


--
-- Name: main_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_menu_id_seq', 7, true);


--
-- Data for Name: main_menu_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_menu_translation (id, language_code, name, slug, master_id) FROM stdin;
3	ru	О нас	o-nas	3
7	ru	Доставка	dostavka	7
2	ru	Продукты	products	2
4	ru	Контакты	contact	4
\.


--
-- Name: main_menu_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_menu_translation_id_seq', 7, true);


--
-- Data for Name: main_news; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_news (id, published_at, image_id) FROM stdin;
\.


--
-- Name: main_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_news_id_seq', 1, false);


--
-- Data for Name: main_news_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_news_translation (id, language_code, name, slug, body, master_id) FROM stdin;
\.


--
-- Name: main_news_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_news_translation_id_seq', 1, false);


--
-- Data for Name: main_static; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_static (id, image_id) FROM stdin;
1	\N
2	\N
\.


--
-- Name: main_static_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_static_id_seq', 3, true);


--
-- Data for Name: main_static_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.main_static_translation (id, language_code, name, slug, body, master_id) FROM stdin;
1	ru	О нас	o-nas	<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации &quot;Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..&quot; Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам &quot;lorem ipsum&quot; сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>	1
2	ru	Доставка	dostavka	<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или &quot;невозможных&quot; слов.</p>	2
\.


--
-- Name: main_static_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.main_static_translation_id_seq', 3, true);


--
-- Data for Name: orders_cart; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.orders_cart (id, count, status, total_price, order_id, product_id, session_key) FROM stdin;
48	1	t	19000.00	\N	8	b76a715a-9071-4f5f-b6ad-fe3024134791
49	1	t	1500.00	\N	7	b76a715a-9071-4f5f-b6ad-fe3024134791
50	1	t	13000.00	\N	6	b76a715a-9071-4f5f-b6ad-fe3024134791
53	5	t	30000.00	\N	2	90c19cc4-77f5-40c5-a80b-6bb664366569
45	4	t	16000.00	3	13	9c29d607-2c21-402b-9c50-7d0438439c71
7	2	t	14000.00	\N	3	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
10	1	t	13000.00	\N	6	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
11	1	t	55000.00	\N	12	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
51	2	t	38000.00	3	8	9c29d607-2c21-402b-9c50-7d0438439c71
54	2	t	14000.00	3	3	9c29d607-2c21-402b-9c50-7d0438439c71
38	3	t	4500.00	3	1	9c29d607-2c21-402b-9c50-7d0438439c71
9	3	t	4500.00	\N	1	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
8	3	t	18000.00	\N	2	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
6	5	t	40000.00	\N	13	939ce4f6-98ae-4aa9-85a3-bf01480e3d61
23	1	t	7000.00	1	3	9c29d607-2c21-402b-9c50-7d0438439c71
24	1	t	6000.00	1	2	9c29d607-2c21-402b-9c50-7d0438439c71
26	1	t	6000.00	2	2	9c29d607-2c21-402b-9c50-7d0438439c71
27	1	t	1500.00	2	1	9c29d607-2c21-402b-9c50-7d0438439c71
25	2	t	14000.00	2	3	9c29d607-2c21-402b-9c50-7d0438439c71
\.


--
-- Name: orders_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.orders_cart_id_seq', 54, true);


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.orders_order (id, client_name, phone, shipping_address, total_price, created, state, order_unique_id, products, customer_id) FROM stdin;
1	A'zam	+99899838947	Toshkent shahar	13000.00	2018-06-27 17:11:58.285498+05	0	b5ccf43e-69e3-4e6f-8d5f-0c647aeb33ec	\N	\N
2	A'zam Mamatmurodov	+99899838947	Toshkent, Muqimiy ko'cha	21500.00	2018-06-27 17:24:58.525223+05	0	6637eb0e-2b07-48ea-8085-7b57f4e0735c	\N	\N
3	A'zam	+99899838947	Tashkent shahar	72500.00	2018-06-28 21:12:30.462699+05	0	0398456b-cc68-43b5-b47c-69cdad936724	\N	\N
\.


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 3, true);


--
-- Data for Name: products_brands; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_brands (id, name, category_id, logo_id) FROM stdin;
1	Good brand	2	10
2	Good 2  brand	1	8
\.


--
-- Name: products_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_brands_id_seq', 2, true);


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_category (id, "order", lft, rght, tree_id, mptt_level, parent_id) FROM stdin;
3	0	2	3	1	1	2
4	0	4	5	1	1	2
5	0	6	7	1	1	2
6	0	8	9	1	1	2
7	0	10	11	1	1	2
8	0	12	13	1	1	2
2	0	1	16	1	0	\N
9	0	14	15	1	1	2
10	0	2	3	2	1	1
11	0	4	5	2	1	1
12	0	6	7	2	1	1
1	0	1	10	2	0	\N
13	0	8	9	2	1	1
\.


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_category_id_seq', 13, true);


--
-- Data for Name: products_category_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_category_translation (id, language_code, name, slug, master_id) FROM stdin;
1	ru	Дети	deti	1
2	ru	Мужчины	muzhchiny	2
3	ru	Мужские костюмы	muzhskie-kostyumy	3
4	ru	Мужские тройка	muzhskie-trojka	4
5	ru	Классический костюм	klassicheskij-kostyum	5
6	ru	Пиджак	pidzhak	6
7	ru	Киттел	kittel	7
8	ru	Куртка	kurtka	8
9	ru	Пальто	palto	9
10	ru	Мальчики	malchiki	10
11	ru	Девочки	devochki	11
12	ru	Школьники	shkolniki	12
13	ru	Подростковый	podrostkovyj	13
\.


--
-- Name: products_category_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_category_translation_id_seq', 13, true);


--
-- Data for Name: products_color; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_color (id, color) FROM stdin;
1	#000000
2	#59D923
\.


--
-- Name: products_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_color_id_seq', 2, true);


--
-- Data for Name: products_color_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_color_translation (id, language_code, name, master_id) FROM stdin;
1	ru	Черный	1
2	ru	Зеленый	2
\.


--
-- Name: products_color_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_color_translation_id_seq', 2, true);


--
-- Data for Name: products_favoriteproduct; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_favoriteproduct (id, product_id, user_id) FROM stdin;
\.


--
-- Name: products_favoriteproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_favoriteproduct_id_seq', 1, false);


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_product (id, name, description, created_at, available_in_stock, is_recommended, price, quantity, slug, brand_id, category_id, owner_id, is_sale) FROM stdin;
3	Ulasansjakjsn	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>	2018-06-23	t	f	7000.00	51	ulasansjakjsn	1	9	1	f
2	Good doleaqas	<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>	2018-06-23	t	f	6000.00	5	good-doleaqas	2	13	1	f
1	Test product name	<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	2018-06-23	t	f	1500.00	3	test-product-name	1	7	1	f
8	Helo product	<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>	2018-06-23	t	f	19000.00	15	helo-product	2	3	1	f
7	Served product from Goop	<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>	2018-06-23	t	f	1500.00	50	served-product-from-goop	1	3	1	f
6	Gessor	<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>	2018-06-23	t	f	13000.00	60	gessor	1	5	1	f
5	Paslt	<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>	2018-06-23	t	t	150000.00	18	paslt	1	11	1	f
4	Hels product	<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>	2018-06-23	t	f	140000.00	10	hels-product	1	8	1	f
11	Lizzani	<p>&quot;On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&quot;</p>	2018-06-23	t	f	30.00	8	lizzani	1	11	1	f
10	Yuilas	<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>	2018-06-23	t	t	80000.00	14	yuilas	1	12	1	f
12	Kossoa	<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p>	2018-06-23	t	t	55000.00	3	kossoa	1	10	1	f
9	Opastik	<p>&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>	2018-06-23	t	f	12000.00	50	opastik	2	13	1	f
13	H. Rackham	<p>&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p>	2018-06-23	t	t	8000.00	16	h-rackham	2	10	1	t
\.


--
-- Data for Name: products_product_colors; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_product_colors (id, product_id, color_id) FROM stdin;
1	13	1
3	10	1
4	10	2
5	13	2
\.


--
-- Name: products_product_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_product_colors_id_seq', 5, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_product_id_seq', 13, true);


--
-- Data for Name: products_product_sizes; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_product_sizes (id, product_id, size_id) FROM stdin;
1	13	4
2	13	5
3	13	6
4	13	7
5	13	8
6	13	9
7	13	10
\.


--
-- Name: products_product_sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_product_sizes_id_seq', 7, true);


--
-- Data for Name: products_productimage; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_productimage (id, file_id, product_id) FROM stdin;
16	16	6
17	25	6
18	13	6
19	18	6
13	25	5
14	13	5
15	34	5
20	12	5
10	34	4
11	29	4
12	17	4
21	23	4
7	28	3
8	11	3
9	22	3
22	33	3
4	18	2
5	23	2
6	17	2
1	30	1
2	35	1
3	13	1
23	25	7
24	17	7
25	23	7
26	30	7
27	16	8
28	25	8
29	13	8
30	15	8
31	21	8
32	29	8
33	23	9
34	13	9
35	30	9
36	22	9
37	16	10
38	11	10
39	28	10
40	35	10
41	27	11
42	14	11
43	17	11
44	35	11
45	11	11
46	13	12
47	21	12
48	30	12
49	35	13
50	12	13
51	34	13
\.


--
-- Name: products_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_productimage_id_seq', 51, true);


--
-- Data for Name: products_review; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_review (created_at, id, reviewer, reviewer_location, subject, text, is_approved, product_id) FROM stdin;
\.


--
-- Name: products_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_review_id_seq', 1, false);


--
-- Data for Name: products_sale; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_sale (id, percent) FROM stdin;
2	50
\.


--
-- Name: products_sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_sale_id_seq', 2, true);


--
-- Data for Name: products_size; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_size (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
\.


--
-- Name: products_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_size_id_seq', 16, true);


--
-- Data for Name: products_size_translation; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.products_size_translation (id, language_code, name, master_id) FROM stdin;
1	ru	XL	1
2	ru	XX	2
3	ru	L	3
4	ru	44	4
5	ru	46	5
6	ru	48	6
7	ru	50	7
8	ru	52	8
9	ru	54	9
10	ru	56	10
11	ru	58	11
12	ru	60	12
13	ru	62	13
14	ru	64	14
15	ru	66	15
16	ru	68	16
\.


--
-- Name: products_size_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.products_size_translation_id_seq', 16, true);


--
-- Data for Name: users_customer; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.users_customer (id, address, user_id) FROM stdin;
\.


--
-- Name: users_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.users_customer_id_seq', 1, false);


--
-- Data for Name: users_partners; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.users_partners (id, title, link, logo_id) FROM stdin;
\.


--
-- Name: users_partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.users_partners_id_seq', 1, false);


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.users_user (id, password, last_login, is_superuser, email, is_staff, username, phone, first_name, last_name, date_joined, is_active, image_id) FROM stdin;
1	pbkdf2_sha256$36000$VzYhvGSKgqOM$4FuK8xirZumacbGeNPhEyQSmx+LcXqQ31Fn4QlVGLdo=	2018-06-28 20:41:27.319331+05	t	azam.mamatmurodov@gmail.com	t	admin		A'zam	Mamatmurodov	2018-06-23 02:52:58.430745+05	t	\N
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: zeroplus
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zeroplus
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: filer_clipboard filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder filer_folder_parent_id_name_bc773258_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: filer_thumbnailoption filer_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: main_banner main_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner
    ADD CONSTRAINT main_banner_pkey PRIMARY KEY (id);


--
-- Name: main_banner_translation main_banner_translation_language_code_master_id_ebf3668a_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner_translation
    ADD CONSTRAINT main_banner_translation_language_code_master_id_ebf3668a_uniq UNIQUE (language_code, master_id);


--
-- Name: main_banner_translation main_banner_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner_translation
    ADD CONSTRAINT main_banner_translation_pkey PRIMARY KEY (id);


--
-- Name: main_contact main_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_contact
    ADD CONSTRAINT main_contact_pkey PRIMARY KEY (id);


--
-- Name: main_menu main_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu
    ADD CONSTRAINT main_menu_pkey PRIMARY KEY (id);


--
-- Name: main_menu_translation main_menu_translation_language_code_master_id_a87e80af_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu_translation
    ADD CONSTRAINT main_menu_translation_language_code_master_id_a87e80af_uniq UNIQUE (language_code, master_id);


--
-- Name: main_menu_translation main_menu_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu_translation
    ADD CONSTRAINT main_menu_translation_pkey PRIMARY KEY (id);


--
-- Name: main_news main_news_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news
    ADD CONSTRAINT main_news_pkey PRIMARY KEY (id);


--
-- Name: main_news_translation main_news_translation_language_code_master_id_05539bac_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news_translation
    ADD CONSTRAINT main_news_translation_language_code_master_id_05539bac_uniq UNIQUE (language_code, master_id);


--
-- Name: main_news_translation main_news_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news_translation
    ADD CONSTRAINT main_news_translation_pkey PRIMARY KEY (id);


--
-- Name: main_news_translation main_news_translation_slug_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news_translation
    ADD CONSTRAINT main_news_translation_slug_key UNIQUE (slug);


--
-- Name: main_static main_static_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static
    ADD CONSTRAINT main_static_pkey PRIMARY KEY (id);


--
-- Name: main_static_translation main_static_translation_language_code_master_id_f27431bb_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static_translation
    ADD CONSTRAINT main_static_translation_language_code_master_id_f27431bb_uniq UNIQUE (language_code, master_id);


--
-- Name: main_static_translation main_static_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static_translation
    ADD CONSTRAINT main_static_translation_pkey PRIMARY KEY (id);


--
-- Name: main_static_translation main_static_translation_slug_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static_translation
    ADD CONSTRAINT main_static_translation_slug_key UNIQUE (slug);


--
-- Name: orders_cart orders_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_cart
    ADD CONSTRAINT orders_cart_pkey PRIMARY KEY (id);


--
-- Name: orders_order orders_order_order_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_order_unique_id_key UNIQUE (order_unique_id);


--
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- Name: products_brands products_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_brands
    ADD CONSTRAINT products_brands_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- Name: products_category_translation products_category_transl_language_code_master_id_03d12f31_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category_translation
    ADD CONSTRAINT products_category_transl_language_code_master_id_03d12f31_uniq UNIQUE (language_code, master_id);


--
-- Name: products_category_translation products_category_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category_translation
    ADD CONSTRAINT products_category_translation_pkey PRIMARY KEY (id);


--
-- Name: products_category_translation products_category_translation_slug_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category_translation
    ADD CONSTRAINT products_category_translation_slug_key UNIQUE (slug);


--
-- Name: products_color products_color_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color
    ADD CONSTRAINT products_color_pkey PRIMARY KEY (id);


--
-- Name: products_color_translation products_color_translati_language_code_master_id_3b02aa43_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color_translation
    ADD CONSTRAINT products_color_translati_language_code_master_id_3b02aa43_uniq UNIQUE (language_code, master_id);


--
-- Name: products_color_translation products_color_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color_translation
    ADD CONSTRAINT products_color_translation_pkey PRIMARY KEY (id);


--
-- Name: products_favoriteproduct products_favoriteproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_favoriteproduct
    ADD CONSTRAINT products_favoriteproduct_pkey PRIMARY KEY (id);


--
-- Name: products_product_colors products_product_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_colors
    ADD CONSTRAINT products_product_colors_pkey PRIMARY KEY (id);


--
-- Name: products_product_colors products_product_colors_product_id_color_id_28f4cef1_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_colors
    ADD CONSTRAINT products_product_colors_product_id_color_id_28f4cef1_uniq UNIQUE (product_id, color_id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: products_product_sizes products_product_sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_sizes
    ADD CONSTRAINT products_product_sizes_pkey PRIMARY KEY (id);


--
-- Name: products_product_sizes products_product_sizes_product_id_size_id_1c8c3d5d_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_sizes
    ADD CONSTRAINT products_product_sizes_product_id_size_id_1c8c3d5d_uniq UNIQUE (product_id, size_id);


--
-- Name: products_productimage products_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimage_pkey PRIMARY KEY (id);


--
-- Name: products_review products_review_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_review
    ADD CONSTRAINT products_review_pkey PRIMARY KEY (id);


--
-- Name: products_sale products_sale_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_sale
    ADD CONSTRAINT products_sale_pkey PRIMARY KEY (id);


--
-- Name: products_size products_size_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size
    ADD CONSTRAINT products_size_pkey PRIMARY KEY (id);


--
-- Name: products_size_translation products_size_translation_language_code_master_id_e5adffb7_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size_translation
    ADD CONSTRAINT products_size_translation_language_code_master_id_e5adffb7_uniq UNIQUE (language_code, master_id);


--
-- Name: products_size_translation products_size_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size_translation
    ADD CONSTRAINT products_size_translation_pkey PRIMARY KEY (id);


--
-- Name: users_customer users_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_customer
    ADD CONSTRAINT users_customer_pkey PRIMARY KEY (id);


--
-- Name: users_customer users_customer_user_id_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_customer
    ADD CONSTRAINT users_customer_user_id_key UNIQUE (user_id);


--
-- Name: users_partners users_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_partners
    ADD CONSTRAINT users_partners_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_phone_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_phone_key UNIQUE (phone);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: filer_clipboard_user_id_b52ff0bc; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id_7a76518b; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id_06196f80; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id_af803bbb; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id_b9e32671; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id_f44903c1; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_level_b631d28a; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_level_b631d28a ON public.filer_folder USING btree (level);


--
-- Name: filer_folder_lft_2c2b69f1; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_lft_2c2b69f1 ON public.filer_folder USING btree (lft);


--
-- Name: filer_folder_owner_id_be530fb4; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id_308aecda; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);


--
-- Name: filer_folder_rght_34946267; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_rght_34946267 ON public.filer_folder USING btree (rght);


--
-- Name: filer_folder_tree_id_b016223c; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);


--
-- Name: filer_folderpermission_folder_id_5d02f1da; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id_8901bafa; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id_7673d4b6; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);


--
-- Name: main_banner_banner_id_354d8e2e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_banner_banner_id_354d8e2e ON public.main_banner USING btree (banner_id);


--
-- Name: main_banner_translation_language_code_18439eee; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_banner_translation_language_code_18439eee ON public.main_banner_translation USING btree (language_code);


--
-- Name: main_banner_translation_language_code_18439eee_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_banner_translation_language_code_18439eee_like ON public.main_banner_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: main_banner_translation_master_id_f62e61c4; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_banner_translation_master_id_f62e61c4 ON public.main_banner_translation USING btree (master_id);


--
-- Name: main_menu_lft_704e961b; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_lft_704e961b ON public.main_menu USING btree (lft);


--
-- Name: main_menu_mptt_level_0758e9b8; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_mptt_level_0758e9b8 ON public.main_menu USING btree (mptt_level);


--
-- Name: main_menu_parent_id_6cee4f65; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_parent_id_6cee4f65 ON public.main_menu USING btree (parent_id);


--
-- Name: main_menu_rght_2b38e609; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_rght_2b38e609 ON public.main_menu USING btree (rght);


--
-- Name: main_menu_translation_language_code_b760b451; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_translation_language_code_b760b451 ON public.main_menu_translation USING btree (language_code);


--
-- Name: main_menu_translation_language_code_b760b451_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_translation_language_code_b760b451_like ON public.main_menu_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: main_menu_translation_master_id_6cb98964; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_translation_master_id_6cb98964 ON public.main_menu_translation USING btree (master_id);


--
-- Name: main_menu_translation_slug_155a9128; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_translation_slug_155a9128 ON public.main_menu_translation USING btree (slug);


--
-- Name: main_menu_translation_slug_155a9128_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_translation_slug_155a9128_like ON public.main_menu_translation USING btree (slug varchar_pattern_ops);


--
-- Name: main_menu_tree_id_459659b1; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_menu_tree_id_459659b1 ON public.main_menu USING btree (tree_id);


--
-- Name: main_news_image_id_fd19b04b; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_news_image_id_fd19b04b ON public.main_news USING btree (image_id);


--
-- Name: main_news_translation_language_code_19002d52; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_news_translation_language_code_19002d52 ON public.main_news_translation USING btree (language_code);


--
-- Name: main_news_translation_language_code_19002d52_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_news_translation_language_code_19002d52_like ON public.main_news_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: main_news_translation_master_id_74e31d9a; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_news_translation_master_id_74e31d9a ON public.main_news_translation USING btree (master_id);


--
-- Name: main_news_translation_slug_5d807e21_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_news_translation_slug_5d807e21_like ON public.main_news_translation USING btree (slug varchar_pattern_ops);


--
-- Name: main_static_image_id_3ffe4516; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_static_image_id_3ffe4516 ON public.main_static USING btree (image_id);


--
-- Name: main_static_translation_language_code_a7e35ca0; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_static_translation_language_code_a7e35ca0 ON public.main_static_translation USING btree (language_code);


--
-- Name: main_static_translation_language_code_a7e35ca0_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_static_translation_language_code_a7e35ca0_like ON public.main_static_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: main_static_translation_master_id_6c9d2d70; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_static_translation_master_id_6c9d2d70 ON public.main_static_translation USING btree (master_id);


--
-- Name: main_static_translation_slug_7864d7f2_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX main_static_translation_slug_7864d7f2_like ON public.main_static_translation USING btree (slug varchar_pattern_ops);


--
-- Name: orders_cart_order_id_8e8f80ce; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX orders_cart_order_id_8e8f80ce ON public.orders_cart USING btree (order_id);


--
-- Name: orders_cart_product_id_113fcfc9; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX orders_cart_product_id_113fcfc9 ON public.orders_cart USING btree (product_id);


--
-- Name: orders_order_customer_id_0b76f6a4; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX orders_order_customer_id_0b76f6a4 ON public.orders_order USING btree (customer_id);


--
-- Name: orders_order_order_unique_id_01fff898_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX orders_order_order_unique_id_01fff898_like ON public.orders_order USING btree (order_unique_id varchar_pattern_ops);


--
-- Name: products_brands_category_id_90ebd3a5; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_brands_category_id_90ebd3a5 ON public.products_brands USING btree (category_id);


--
-- Name: products_brands_logo_id_9c1ede2a; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_brands_logo_id_9c1ede2a ON public.products_brands USING btree (logo_id);


--
-- Name: products_category_lft_b068de9d; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_lft_b068de9d ON public.products_category USING btree (lft);


--
-- Name: products_category_mptt_level_675133a8; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_mptt_level_675133a8 ON public.products_category USING btree (mptt_level);


--
-- Name: products_category_parent_id_3388f6c9; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_parent_id_3388f6c9 ON public.products_category USING btree (parent_id);


--
-- Name: products_category_rght_c5971abd; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_rght_c5971abd ON public.products_category USING btree (rght);


--
-- Name: products_category_translation_language_code_ddf7527e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_translation_language_code_ddf7527e ON public.products_category_translation USING btree (language_code);


--
-- Name: products_category_translation_language_code_ddf7527e_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_translation_language_code_ddf7527e_like ON public.products_category_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: products_category_translation_master_id_f53287e3; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_translation_master_id_f53287e3 ON public.products_category_translation USING btree (master_id);


--
-- Name: products_category_translation_slug_d9e2774a_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_translation_slug_d9e2774a_like ON public.products_category_translation USING btree (slug varchar_pattern_ops);


--
-- Name: products_category_tree_id_7d9b3ae8; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_category_tree_id_7d9b3ae8 ON public.products_category USING btree (tree_id);


--
-- Name: products_color_translation_language_code_f0d74222; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_color_translation_language_code_f0d74222 ON public.products_color_translation USING btree (language_code);


--
-- Name: products_color_translation_language_code_f0d74222_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_color_translation_language_code_f0d74222_like ON public.products_color_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: products_color_translation_master_id_3e7ac7bb; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_color_translation_master_id_3e7ac7bb ON public.products_color_translation USING btree (master_id);


--
-- Name: products_favoriteproduct_product_id_d3aec029; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_favoriteproduct_product_id_d3aec029 ON public.products_favoriteproduct USING btree (product_id);


--
-- Name: products_favoriteproduct_user_id_22d12ddf; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_favoriteproduct_user_id_22d12ddf ON public.products_favoriteproduct USING btree (user_id);


--
-- Name: products_product_brand_id_3e2e8fd1; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_brand_id_3e2e8fd1 ON public.products_product USING btree (brand_id);


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- Name: products_product_colors_color_id_27abec57; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_colors_color_id_27abec57 ON public.products_product_colors USING btree (color_id);


--
-- Name: products_product_colors_product_id_af745b3e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_colors_product_id_af745b3e ON public.products_product_colors USING btree (product_id);


--
-- Name: products_product_owner_id_f189d068; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_owner_id_f189d068 ON public.products_product USING btree (owner_id);


--
-- Name: products_product_sizes_product_id_7cf7aa08; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_sizes_product_id_7cf7aa08 ON public.products_product_sizes USING btree (product_id);


--
-- Name: products_product_sizes_size_id_e0cab160; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_sizes_size_id_e0cab160 ON public.products_product_sizes USING btree (size_id);


--
-- Name: products_product_slug_70d3148d; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_slug_70d3148d ON public.products_product USING btree (slug);


--
-- Name: products_product_slug_70d3148d_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_product_slug_70d3148d_like ON public.products_product USING btree (slug varchar_pattern_ops);


--
-- Name: products_productimage_file_id_be2d7f63; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_productimage_file_id_be2d7f63 ON public.products_productimage USING btree (file_id);


--
-- Name: products_productimage_product_id_e747596a; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_productimage_product_id_e747596a ON public.products_productimage USING btree (product_id);


--
-- Name: products_review_product_id_d933ffa7; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_review_product_id_d933ffa7 ON public.products_review USING btree (product_id);


--
-- Name: products_size_translation_language_code_16a8b332; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_size_translation_language_code_16a8b332 ON public.products_size_translation USING btree (language_code);


--
-- Name: products_size_translation_language_code_16a8b332_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_size_translation_language_code_16a8b332_like ON public.products_size_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: products_size_translation_master_id_3c9e562c; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX products_size_translation_master_id_3c9e562c ON public.products_size_translation USING btree (master_id);


--
-- Name: users_partners_logo_id_cda46e59; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_partners_logo_id_cda46e59 ON public.users_partners USING btree (logo_id);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_image_id_c6740cde; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_image_id_c6740cde ON public.users_user USING btree (image_id);


--
-- Name: users_user_phone_fe37f55c_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_phone_fe37f55c_like ON public.users_user USING btree (phone varchar_pattern_ops);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: zeroplus
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_owner_id_b9e32671_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_users_user_id FOREIGN KEY (owner_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_owner_id_be530fb4_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_users_user_id FOREIGN KEY (owner_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_banner main_banner_banner_id_354d8e2e_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner
    ADD CONSTRAINT main_banner_banner_id_354d8e2e_fk_filer_image_file_ptr_id FOREIGN KEY (banner_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_banner_translation main_banner_translation_master_id_f62e61c4_fk_main_banner_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_banner_translation
    ADD CONSTRAINT main_banner_translation_master_id_f62e61c4_fk_main_banner_id FOREIGN KEY (master_id) REFERENCES public.main_banner(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_menu main_menu_parent_id_6cee4f65_fk_main_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu
    ADD CONSTRAINT main_menu_parent_id_6cee4f65_fk_main_menu_id FOREIGN KEY (parent_id) REFERENCES public.main_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_menu_translation main_menu_translation_master_id_6cb98964_fk_main_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_menu_translation
    ADD CONSTRAINT main_menu_translation_master_id_6cb98964_fk_main_menu_id FOREIGN KEY (master_id) REFERENCES public.main_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_news main_news_image_id_fd19b04b_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news
    ADD CONSTRAINT main_news_image_id_fd19b04b_fk_filer_image_file_ptr_id FOREIGN KEY (image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_news_translation main_news_translation_master_id_74e31d9a_fk_main_news_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_news_translation
    ADD CONSTRAINT main_news_translation_master_id_74e31d9a_fk_main_news_id FOREIGN KEY (master_id) REFERENCES public.main_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_static main_static_image_id_3ffe4516_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static
    ADD CONSTRAINT main_static_image_id_3ffe4516_fk_filer_image_file_ptr_id FOREIGN KEY (image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_static_translation main_static_translation_master_id_6c9d2d70_fk_main_static_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.main_static_translation
    ADD CONSTRAINT main_static_translation_master_id_6c9d2d70_fk_main_static_id FOREIGN KEY (master_id) REFERENCES public.main_static(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_cart orders_cart_order_id_8e8f80ce_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_cart
    ADD CONSTRAINT orders_cart_order_id_8e8f80ce_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_cart orders_cart_product_id_113fcfc9_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_cart
    ADD CONSTRAINT orders_cart_product_id_113fcfc9_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_order orders_order_customer_id_0b76f6a4_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_customer_id_0b76f6a4_fk_users_user_id FOREIGN KEY (customer_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_brands products_brands_category_id_90ebd3a5_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_brands
    ADD CONSTRAINT products_brands_category_id_90ebd3a5_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_brands products_brands_logo_id_9c1ede2a_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_brands
    ADD CONSTRAINT products_brands_logo_id_9c1ede2a_fk_filer_image_file_ptr_id FOREIGN KEY (logo_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_category products_category_parent_id_3388f6c9_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_parent_id_3388f6c9_fk_products_category_id FOREIGN KEY (parent_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_category_translation products_category_tr_master_id_f53287e3_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_category_translation
    ADD CONSTRAINT products_category_tr_master_id_f53287e3_fk_products_ FOREIGN KEY (master_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_color_translation products_color_trans_master_id_3e7ac7bb_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_color_translation
    ADD CONSTRAINT products_color_trans_master_id_3e7ac7bb_fk_products_ FOREIGN KEY (master_id) REFERENCES public.products_color(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_favoriteproduct products_favoritepro_product_id_d3aec029_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_favoriteproduct
    ADD CONSTRAINT products_favoritepro_product_id_d3aec029_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_favoriteproduct products_favoriteproduct_user_id_22d12ddf_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_favoriteproduct
    ADD CONSTRAINT products_favoriteproduct_user_id_22d12ddf_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_brand_id_3e2e8fd1_fk_products_brands_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_brand_id_3e2e8fd1_fk_products_brands_id FOREIGN KEY (brand_id) REFERENCES public.products_brands(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_colors products_product_col_product_id_af745b3e_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_colors
    ADD CONSTRAINT products_product_col_product_id_af745b3e_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_colors products_product_colors_color_id_27abec57_fk_products_color_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_colors
    ADD CONSTRAINT products_product_colors_color_id_27abec57_fk_products_color_id FOREIGN KEY (color_id) REFERENCES public.products_color(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_owner_id_f189d068_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_owner_id_f189d068_fk_users_user_id FOREIGN KEY (owner_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_sizes products_product_siz_product_id_7cf7aa08_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_sizes
    ADD CONSTRAINT products_product_siz_product_id_7cf7aa08_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_sizes products_product_sizes_size_id_e0cab160_fk_products_size_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_product_sizes
    ADD CONSTRAINT products_product_sizes_size_id_e0cab160_fk_products_size_id FOREIGN KEY (size_id) REFERENCES public.products_size(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productimage products_productimag_file_id_be2d7f63_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimag_file_id_be2d7f63_fk_filer_ima FOREIGN KEY (file_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productimage products_productimag_product_id_e747596a_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimag_product_id_e747596a_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_review products_review_product_id_d933ffa7_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_review
    ADD CONSTRAINT products_review_product_id_d933ffa7_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_size_translation products_size_transl_master_id_3c9e562c_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.products_size_translation
    ADD CONSTRAINT products_size_transl_master_id_3c9e562c_fk_products_ FOREIGN KEY (master_id) REFERENCES public.products_size(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customer users_customer_user_id_a09bb4be_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_customer
    ADD CONSTRAINT users_customer_user_id_a09bb4be_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_partners users_partners_logo_id_cda46e59_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_partners
    ADD CONSTRAINT users_partners_logo_id_cda46e59_fk_filer_image_file_ptr_id FOREIGN KEY (logo_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user users_user_image_id_c6740cde_fk_filer_image_file_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_image_id_c6740cde_fk_filer_image_file_ptr_id FOREIGN KEY (image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: zeroplus
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

