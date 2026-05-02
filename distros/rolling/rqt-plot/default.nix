
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, qt6, rclpy, rosidl-parser, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-plot";
  version = "1.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/rolling/rqt_plot/1.7.5-2.tar.gz";
    name = "1.7.5-2.tar.gz";
    sha256 = "21773f2da7799917cd807ac516314b38e90421f87cbd3029b1075883d840882c";
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
