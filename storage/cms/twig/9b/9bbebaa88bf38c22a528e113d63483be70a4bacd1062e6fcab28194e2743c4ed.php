<?php

/* /Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/_addons/css.htm */
class __TwigTemplate_af4b94f98c85c5170f24eb6d7687c6c18ec24b6365c581605cc674257345a93e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ($this->getAttribute($this->getAttribute(($context["this"] ?? null), "theme", array()), "load_animate_css", array())) {
            // line 2
            echo "  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css\" rel=\"stylesheet\">
";
        }
        // line 4
        echo "
";
        // line 5
        if ($this->getAttribute($this->getAttribute(($context["this"] ?? null), "theme", array()), "load_owl_carousel", array())) {
            // line 6
            echo "  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/assets/owl.carousel.min.css\" rel=\"stylesheet\">
  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/assets/owl.theme.default.min.css\" rel=\"stylesheet\">
";
        }
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/_addons/css.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  30 => 6,  28 => 5,  25 => 4,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if this.theme.load_animate_css %}
  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css\" rel=\"stylesheet\">
{% endif %}

{% if this.theme.load_owl_carousel %}
  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/assets/owl.carousel.min.css\" rel=\"stylesheet\">
  <link href=\"https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.6/assets/owl.theme.default.min.css\" rel=\"stylesheet\">
{% endif %}", "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/_addons/css.htm", "");
    }
}
