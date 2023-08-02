# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  eigenpy = rosSuper.eigenpy.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [ "-DPYTHON_EXECUTABLE=${rosSelf.python.interpreter}" ];
  });

  gazebo = self.gazebo_11;

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.13.20230224.tar.gz";
    sha256 = "sha256-HQeVEQUX6xjIBkcoh8r8hh3QtqHBBFJGxVW8R/a9d+M=";
  };

  mapviz = rosSuper.mapviz.overrideAttrs ({
    patches ? [], ...
  }: {
    # Fix linking to GLUT with CMake 3.22
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/swri-robotics/mapviz/commit/b3c8e19bc1b7e1d2478c0b13a848d7caf40b4e5e.patch";
      sha256 = "sha256-abjP9Pn3v+aLZBOI0KiGihHgt2WLadDvdaKVyk2IlPY=";
      stripLen = 1;
    }) ];
  });

  pcl-ros = rosSuper.pcl-ros.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix compatibility with PCL 1.13
      (self.fetchpatch {
        url = "https://github.com/ros-perception/perception_pcl/commit/eb8f009ca519fc6b5651ba3a125fe5ae04f67bb8.patch";
        hash = "sha256-tEp4/1loFpjHKpNYuDz32iSzXJdrXGWmfJuBkO8d95w=";
        stripLen = 1;
      })
    ];
  });

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.10.3.zip";
    sha256 = "sha256-IBlmph3IJvGxh5okozF6HskhSpGMjrA1vi8ww+nPvcs=";
  };

  rosconsole = rosSuper.rosconsole.overrideAttrs ({
    patches ? [], ...
  }: {
    # Support liblog4cxx 0.13
    # https://github.com/ros/rosconsole/pull/58
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros/rosconsole/pull/58.patch";
      hash = "sha256-Rg+WCPak5sxBqdQ/QR9eboyX921PZTjk3/PuH5mz96U=";
    }) ];
  });

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/9.1.0/fmt-9.1.0.zip";
    sha256 = "sha256-zOtMuTZuGKV0ISjLNSTOX1Doi0dvHlRzekf/3030yZY=";
  };

  rqt-graph = rosSuper.rqt-graph.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_graph/rqt_graph"
    '';
  });

  rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_gui/rqt_gui"
    '';
  });

  rqt-image-view = rosSuper.rqt-image-view.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_image_view"
    '';
  });

  rqt-msg = rosSuper.rqt-msg.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_msg/rqt_msg"
    '';
  });

  rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_plot/rqt_plot"
    '';
  });
  
  rqt-publisher = rosSuper.rqt-publisher.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_publisher/rqt_publisher"
    '';
  });

  rqt-py-console = rosSuper.rqt-py-console.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_py_console/rqt_py_console"
    '';
  });

  rqt-reconfigure = rosSuper.rqt-reconfigure.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_reconfigure/rqt_reconfigure"
    '';
  });

  rqt-service-caller = rosSuper.rqt-service-caller.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_service_caller/rqt_service_caller"
    '';
  });

  rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_shell/rqt_shell"
    '';
  });

  rqt-srv = rosSuper.rqt-srv.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_srv/rqt_srv"
    '';
  });

  rqt-top = rosSuper.rqt-top.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_top/rqt_top"
    '';
  });

  rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_topic/rqt_topic"
    '';
  });
}
