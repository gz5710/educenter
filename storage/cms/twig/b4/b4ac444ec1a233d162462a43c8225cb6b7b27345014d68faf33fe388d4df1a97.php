<?php

/* /Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/header.htm */
class __TwigTemplate_8bc140c12ee582d2d29a791604e938f3b60d3e8a5e89e4ceb4e392c4d8659aa1 extends Twig_Template
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
        echo "<div class=\"lt-row row\">
  <div class=\"lt-col col s12\">
    <div class=\"lt-parallax-header parallax-container\" style=\"height: 400px;\">
      <div class=\"lt-parallax parallax\"><img src=\"";
        // line 4
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/pages/contact/header/img-01.jpg");
        echo "\" alt=\"image\"></div>
      <div class=\"lt-parallax-content\">
        <div class=\"valign-wrapper\" style=\"height: 400px;\">
          <div class=\"valign\">
            <h2 class=\"lt-title\">联系我们</h2>
            <p class=\"lt-subtitle flow-text\">请随时与我们保持联系</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"lt-row row\">
  <div class=\"lt-col col s12\">
    <div class=\"lt-parallax-header parallax-container\" style=\"height: 400px;\">
      <div class=\"lt-parallax parallax\"><img src=\"{{ 'assets/img/pages/contact/header/img-01.jpg'|theme }}\" alt=\"image\"></div>
      <div class=\"lt-parallax-content\">
        <div class=\"valign-wrapper\" style=\"height: 400px;\">
          <div class=\"valign\">
            <h2 class=\"lt-title\">联系我们</h2>
            <p class=\"lt-subtitle flow-text\">请随时与我们保持联系</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>", "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/header.htm", "");
    }
}
