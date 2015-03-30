# Configuration file for ipython-notebook.
c = get_config()

# The number of additional ports to try if the specified port is not available.
c.NotebookApp.port_retries = 50
The url for MathJax.js.

# The IP address the notebook server will listen on.
c.NotebookApp.ip = '*'

# The default URL to redirect to from `/`
# c.NotebookApp.default_url = '/tree'


# Whether to open in a browser after starting. The specific browser used is
# platform dependent and determined by the python standard library `webbrowser`
# module, unless it is overridden using the --browser (NotebookApp.browser)
# configuration option.
c.NotebookApp.open_browser = False

# The date format used by logging formatters for %(asctime)s
# c.NotebookApp.log_datefmt = '%Y-%m-%d %H:%M:%S'

# The port the notebook server will listen on.
c.NotebookApp.port = 8888
