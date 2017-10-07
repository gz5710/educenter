<?php

/* /Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/contact.htm */
class __TwigTemplate_e3c737e5f818df71a119eebe685442f68e34eb1a5c72c228b56bece6bde8779a extends Twig_Template
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
  <div class=\"lt-col col m3 s12\">
  </div>
  <div class=\"lt-col col m3 s12\">
    <div>
        <img class=\"responsive-img\" alt=\"image\" src=\"";
        // line 6
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/pages/all/qrcode.png");
        echo "\">
    </div>
  </div>
  <div class=\"lt-col col m4 s12\">
    <div class=\"left-align\">
      <blockquote>电话：0033 6666666666</blockquote>
      <blockquote>邮箱：666666@6666.com</blockquote>
      <blockquote>微信：666666666666</blockquote>
      <blockquote>Q Q ：66666666666</blockquote>
    </div>
  </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/contact.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  26 => 6,  19 => 1,);
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
  <div class=\"lt-col col m3 s12\">
  </div>
  <div class=\"lt-col col m3 s12\">
    <div>
        <img class=\"responsive-img\" alt=\"image\" src=\"{{ 'assets/img/pages/all/qrcode.png'|theme }}\">
    </div>
  </div>
  <div class=\"lt-col col m4 s12\">
    <div class=\"left-align\">
      <blockquote>电话：0033 6666666666</blockquote>
      <blockquote>邮箱：666666@6666.com</blockquote>
      <blockquote>微信：666666666666</blockquote>
      <blockquote>Q Q ：66666666666</blockquote>
    </div>
  </div>
</div>", "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-contact/contact.htm", "");
    }
}
