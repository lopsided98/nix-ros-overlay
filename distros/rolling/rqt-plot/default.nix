
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-parser, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-plot";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/rolling/rqt_plot/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "728aa4849603eefa577e09f23365ff2281244e19499b435bd86d67e6ceb18ee0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rosidl-parser rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
