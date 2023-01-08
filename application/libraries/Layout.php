<?php


/**
 * Class View
 */
class Layout
{
    protected $ci;

    function __construct()
    {
        $this->ci = &get_instance();
    }


    /**
     * The name of the layout being used, if any.
     * Set by the `extend` method used within views.
     *
     * @var string|null
     */
    protected $layout;

    /**
     * Holds the sections and their data.
     *
     * @var array
     */
    protected $sections = [];

    /**
     * The name of the current section being rendered,
     * if any.
     *
     * @var string|null
     *
     * @deprecated
     */
    protected $currentSection;

    /**
     * The name of the current section being rendered,
     * if any.
     *
     * @var array<string>
     */
    protected $sectionStack = [];

    public function extend($layout)
    {
        $this->layout = $layout;
        $this->ci->load->view($this->layout);
    }

    /**
     * Starts holds content for a section within the layout.
     *
     * @param string $name Section name
     */
    public function section($name)
    {
        // Saved to prevent BC.
        $this->currentSection = $name;
        $this->sectionStack[] = $name;

        ob_start();
    }

    /**
     * Captures the last section
     *
     * @throws RuntimeException
     */
    public function endSection()
    {
        $contents = ob_get_clean();

        if ($this->sectionStack === []) {
            throw new RuntimeException('View themes, no current section.');
        }

        $section = array_pop($this->sectionStack);

        // Ensure an array exists so we can store multiple entries for this.
        if (!array_key_exists($section, $this->sections)) {
            $this->sections[$section] = [];
        }

        $this->sections[$section][] = $contents;
    }

    /**
     * Renders a section's contents.
     */
    public function renderSection($sectionName)
    {
        if (!isset($this->sections[$sectionName])) {

            return;
        }
        foreach ($this->sections[$sectionName] as $key => $contents) {
            echo $contents;
            unset($this->sections[$sectionName][$key]);
        }
    }
}
