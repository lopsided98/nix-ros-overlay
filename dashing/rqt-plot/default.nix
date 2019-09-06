
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rclpy, rqt-gui, python3Packages, std-msgs, rqt-py-common, qt-gui-py-common }:
buildRosPackage rec {
  pname = "ros-dashing-rqt-plot";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/dashing/rqt_plot/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "764812900d6b786999e3a4b9300261759734e45094e3d1891421942dc5134b87";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python3Packages.numpy rclpy rqt-gui qt-gui-py-common std-msgs rqt-py-common python-qt-binding python3Packages.matplotlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
