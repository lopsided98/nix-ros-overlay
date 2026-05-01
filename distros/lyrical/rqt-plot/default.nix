
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, qt6, rclpy, rosidl-parser, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rqt-plot";
  version = "1.7.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/lyrical/rqt_plot/1.7.5-3.tar.gz";
    name = "1.7.5-3.tar.gz";
    sha256 = "09589ad91def83465405522c0518ef7edeb3f4ea47f745736f3ecc9f175dd146";
  };

  buildType = "ament_python";
  buildInputs = [ qt6.qtbase ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rosidl-parser rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
