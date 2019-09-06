
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rclpy, rqt-gui, python3Packages, std-msgs, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-plot";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_plot-release/archive/release/crystal/rqt_plot/1.0.6-1.tar.gz;
    sha256 = "2b849f99ddef657e6711f07cf034016b0b12219010431f81b467649ea2ce2f9f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python3Packages.numpy rclpy rqt-gui qt-gui-py-common std-msgs rqt-py-common python-qt-binding python3Packages.matplotlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
