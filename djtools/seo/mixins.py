class SEOMixin:
    seo_title = None
    seo_description = None

    def get_seo_title(self):
        return self.seo_title

    def get_seo_description(self):
        return self.seo_description

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'seo_title': self.get_seo_title(),
            'seo_description': self.get_seo_description(),
        })
        return context
