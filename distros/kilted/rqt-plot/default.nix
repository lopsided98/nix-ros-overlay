
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-parser, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqt-plot";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/kilted/rqt_plot/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "ab025fb586fb1a6e4dc2ae0a754f53dc29befb7729c83f1e541bc44309261287";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rosidl-parser rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
