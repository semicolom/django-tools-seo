# Django Tools SEO

Simple Django app to manage project SEO like Google Analytics

## Installation

1. Install with pip install `django-tools-seo`.

2. Add `djtools.seo` to your INSTALLED_APPS setting like this:
```
INSTALLED_APPS = [
    ...
    'djtools.seo',
]
```

3. If you want to add the Google Analytics Tracking Script you should
3.1 Add you Google Analytics Tracking ID to your settings file:
```
GOOGLE_ANALYTICS_TRACKING_ID = "UA-TESTID"
```
3.2 Add a context processor to your settings file:
```
TEMPLATES = [
    {
        ...
        'OPTIONS': {
            'context_processors': [
                ...
                'djtools.seo.context_processors.google_analytics',
            ],
        },
    },
]
```
3.3 Include the `google_analytics.html` into your base template:
```
{% include "djtools/seo/google_analytics.html" %}
```
