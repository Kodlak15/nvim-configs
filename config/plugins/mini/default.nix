{
  plugins.mini = {
    enable = true;
    modules = {
      ai = {
        n_lines = 500;
        search_method = "cover_or_next";
        custom_objects = {};
      };
      indentscope = {
        symbol = "|";
        options.try_as_border = true;
      };
    };
  };
}
