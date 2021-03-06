
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rqt-plot";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/foxy/rqt_plot/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "956100cd548a6540b7311f68d0da39e3d5c22588ae1ef93ee769e69c0388916c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
