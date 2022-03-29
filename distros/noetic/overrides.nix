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
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.7.20210816.tar.gz";
    sha256 = "0ynyw672033psdy018sqzc6mv9yvfxyp43c5d6x1iqk9cz6p4hfk";
  };

  pybind11-catkin = patchVendorUrl rosSuper.pybind11-catkin {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.zip";
    sha256 = "080mss10aadal8sk3bib2dr2ygx6hmxn2g92qsq42v3zhchz2n8q";
  };

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/7.1.2/fmt-7.1.2.zip";
    sha256 = "19qfd19mvzg4awqbh5x10m8riyyy0dbpadpidp3mrs81gjmnhsad";
  };

  rqt-graph = rosSuper.rqt-graph.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_graph/rqt_graph"
    '';
  });

  rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
    patches ? [], postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_gui/rqt_gui"
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
