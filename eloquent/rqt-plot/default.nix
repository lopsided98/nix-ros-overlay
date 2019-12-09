
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, qt-gui-py-common, rqt-py-common, std-msgs, ament-cmake, rqt-gui-py, rclpy, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-plot";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/eloquent/rqt_plot/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "d6f0a61f968af9611cc5c257e5a17991b23d5215e0098716eb38e4af88b69c02";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python3Packages.matplotlib rqt-gui qt-gui-py-common std-msgs rqt-py-common rqt-gui-py python3Packages.numpy rclpy python3Packages.catkin-pkg python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
