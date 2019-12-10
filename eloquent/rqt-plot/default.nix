
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rqt-plot";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/eloquent/rqt_plot/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "d6f0a61f968af9611cc5c257e5a17991b23d5215e0098716eb38e4af88b69c02";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
