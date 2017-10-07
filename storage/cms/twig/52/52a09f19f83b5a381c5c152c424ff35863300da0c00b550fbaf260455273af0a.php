<?php

/* /Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/pages/home.htm */
class __TwigTemplate_1a06e1de47bf047acfa671a06b8d1b3f7bc666e417585b462a4a6b1f4a898400 extends Twig_Template
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
        echo "<section id=\"lt-slideshow\" class=\"lt-section lt-section-fullwidth section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-slideshow-content\">
      ";
        // line 4
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/slideshow"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 5
        echo "    </div>
  </div>
</section>


<!-- Who we are (White bgcolor) -->
<section id=\"lt-mainpage\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-mainpage-content\">
      ";
        // line 14
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/who"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 15
        echo "    </div>
  </div>
</section>

<!-- What we gonna do (Grey bgcolor) -->
<section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-utility-content\">
      ";
        // line 23
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/todo"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 24
        echo "    </div>
  </div>
</section>

<!-- What our advantages (White bgcolor) -->
<section id=\"lt-mainpage\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      ";
        // line 32
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/advantages"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 33
        echo "    </div>
  </div>
</section>

<!-- Targeted markets (Grey bgcolor) -->
<section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-mainpage-content\">
      ";
        // line 41
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/targets"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 42
        echo "    </div>
  </div>
</section>

<!-- <section id=\"lt-feature\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      ";
        // line 49
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/feature"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 50
        echo "    </div>
  </div>
</section> -->

<!-- <section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-utility-content\">
      ";
        // line 57
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/utility"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 58
        echo "    </div>
  </div>
</section> -->

<!-- <section id=\"lt-bottom\" class=\"lt-section section\" style=\"background-color: #fff;\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-bottom-content\">
      ";
        // line 65
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/bottom"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 66
        echo "    </div>
  </div>
</section> -->

<!-- <section id=\"lt-extension\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-extension-content\">
      ";
        // line 73
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/extension"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 74
        echo "    </div>
  </div>
</section> -->";
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  137 => 74,  133 => 73,  124 => 66,  120 => 65,  111 => 58,  107 => 57,  98 => 50,  94 => 49,  85 => 42,  81 => 41,  71 => 33,  67 => 32,  57 => 24,  53 => 23,  43 => 15,  39 => 14,  28 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<section id=\"lt-slideshow\" class=\"lt-section lt-section-fullwidth section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-slideshow-content\">
      {% partial \"pages-home/slideshow\" %}
    </div>
  </div>
</section>


<!-- Who we are (White bgcolor) -->
<section id=\"lt-mainpage\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-mainpage-content\">
      {% partial \"pages-home/who\" %}
    </div>
  </div>
</section>

<!-- What we gonna do (Grey bgcolor) -->
<section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-utility-content\">
      {% partial \"pages-home/todo\" %}
    </div>
  </div>
</section>

<!-- What our advantages (White bgcolor) -->
<section id=\"lt-mainpage\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      {% partial \"pages-home/advantages\" %}
    </div>
  </div>
</section>

<!-- Targeted markets (Grey bgcolor) -->
<section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-mainpage-content\">
      {% partial \"pages-home/targets\" %}
    </div>
  </div>
</section>

<!-- <section id=\"lt-feature\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      {% partial \"pages-home/feature\" %}
    </div>
  </div>
</section> -->

<!-- <section id=\"lt-utility\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-utility-content\">
      {% partial \"pages-home/utility\" %}
    </div>
  </div>
</section> -->

<!-- <section id=\"lt-bottom\" class=\"lt-section section\" style=\"background-color: #fff;\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-bottom-content\">
      {% partial \"pages-home/bottom\" %}
    </div>
  </div>
</section> -->

<!-- <section id=\"lt-extension\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-extension-content\">
      {% partial \"pages-home/extension\" %}
    </div>
  </div>
</section> -->", "/Applications/MAMP/htdocs/educenter/themes/laratify-octobercms-octaskin/pages/home.htm", "");
    }
}
