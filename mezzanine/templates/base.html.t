<!DOCTYPE html>
{% load pages_tags mezzanine_tags i18n future %}
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width">
		<meta name="keywords" content="{% block meta_keywords %}{% endblock %}">
		<meta name="description" content="{% block meta_description %}{% endblock %}">
		<title>{% block meta_title %}{% endblock %}{% if settings.SITE_TITLE %} | {{ settings.SITE_TITLE }}{% endif %}</title>
		<link rel="shortcut icon" href="{{ STATIC_URL }}img/favicon.ico">

		{% ifinstalled mezzanine.blog %}
		<link rel="alternate" type="application/rss+xml" title="RSS" href="{% url "blog_post_feed" "rss" %}">
		<link rel="alternate" type="application/atom+xml" title="Atom" href="{% url "blog_post_feed" "atom" %}">
		{% endifinstalled %}

		{% compress css %}
		<!-- css goes here -->
		{% block extra_css %}{% endblock %}
		{% endcompress %}

		{% compress js %}
		<!-- js goes here -->
		{% block extra_js %}{% endblock %}
		{% endcompress %}

		{% block extra_head %}{% endblock %}
	</head>
	<body id="{% block body_id %}body{% endblock %}">
		{% block main %}{% endblock %}
	</body>
</html>