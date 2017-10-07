<?php

/* /Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm */
class __TwigTemplate_c12af1500d2ee594ca9037109063e37856d89098b8320bc9d1581556161609dd extends Twig_Template
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
        echo "<div class=\"lt-navbar navbar-fixed\">
  <nav class=\"lt-no-background\">
    <div class=\"nav-wrapper\">
      <div class=\"lt-container container\">
        <a href=\"";
        // line 5
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\" class=\"brand-logo white-text\">法中教育服务中心</a>
        <a href=\"#\" data-activates=\"mobile-menu\" class=\"lt-mobile-toggle button-collapse\"><i class=\"material-icons\">菜单</i></a>
        <ul class=\"right hide-on-med-and-down\">
          <li class=\"";
        // line 8
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "home")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\">主页</a></li>
          <li class=\"";
        // line 9
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "consulting")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("consulting");
        echo "\">申请咨询</a></li>
          <!-- <li class=\"";
        // line 10
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "about")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("about");
        echo "\">About</a></li>
          <li class=\"";
        // line 11
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "portfolio")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("portfolio");
        echo "\">Portfolio</a></li> -->
          <li class=\"";
        // line 12
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "contact")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("contact");
        echo "\">联系我们</a></li>
        </ul>
        <ul class=\"side-nav\" id=\"mobile-menu\">
          <li class=\"";
        // line 15
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "home")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\">主页</a></li>
          <li class=\"";
        // line 16
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "consulting")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("consulting");
        echo "\">申请咨询</a></li>
          <!-- <li class=\"";
        // line 17
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "about")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("about");
        echo "\">About</a></li>
          <li class=\"";
        // line 18
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "portfolio")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("portfolio");
        echo "\">Portfolio</a></li> -->
          <li class=\"";
        // line 19
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "contact")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("contact");
        echo "\">联系我们</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>";
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  105 => 19,  97 => 18,  89 => 17,  81 => 16,  73 => 15,  63 => 12,  55 => 11,  47 => 10,  39 => 9,  31 => 8,  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"lt-navbar navbar-fixed\">
  <nav class=\"lt-no-background\">
    <div class=\"nav-wrapper\">
      <div class=\"lt-container container\">
        <a href=\"{{ 'home'|page }}\" class=\"brand-logo white-text\">法中教育服务中心</a>
        <a href=\"#\" data-activates=\"mobile-menu\" class=\"lt-mobile-toggle button-collapse\"><i class=\"material-icons\">菜单</i></a>
        <ul class=\"right hide-on-med-and-down\">
          <li class=\"{% if this.page.id == 'home' %}active{% endif %}\"><a href=\"{{ 'home'|page }}\">主页</a></li>
          <li class=\"{% if this.page.id == 'consulting' %}active{% endif %}\"><a href=\"{{ 'consulting'|page }}\">申请咨询</a></li>
          <!-- <li class=\"{% if this.page.id == 'about' %}active{% endif %}\"><a href=\"{{ 'about'|page }}\">About</a></li>
          <li class=\"{% if this.page.id == 'portfolio' %}active{% endif %}\"><a href=\"{{ 'portfolio'|page }}\">Portfolio</a></li> -->
          <li class=\"{% if this.page.id == 'contact' %}active{% endif %}\"><a href=\"{{ 'contact'|page }}\">联系我们</a></li>
        </ul>
        <ul class=\"side-nav\" id=\"mobile-menu\">
          <li class=\"{% if this.page.id == 'home' %}active{% endif %}\"><a href=\"{{ 'home'|page }}\">主页</a></li>
          <li class=\"{% if this.page.id == 'consulting' %}active{% endif %}\"><a href=\"{{ 'consulting'|page }}\">申请咨询</a></li>
          <!-- <li class=\"{% if this.page.id == 'about' %}active{% endif %}\"><a href=\"{{ 'about'|page }}\">About</a></li>
          <li class=\"{% if this.page.id == 'portfolio' %}active{% endif %}\"><a href=\"{{ 'portfolio'|page }}\">Portfolio</a></li> -->
          <li class=\"{% if this.page.id == 'contact' %}active{% endif %}\"><a href=\"{{ 'contact'|page }}\">联系我们</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>", "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm", "");
    }
}
