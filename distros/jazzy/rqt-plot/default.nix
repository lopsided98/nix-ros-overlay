
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-plot";
  version = "1.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/jazzy/rqt_plot/1.4.4-1.tar.gz";
    name = "1.4.4-1.tar.gz";
    sha256 = "db9c7dfbed9abebaa48e05077c819543de7d44e9ac3155b99d2cc69e4659d7dc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest test-msgs ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
