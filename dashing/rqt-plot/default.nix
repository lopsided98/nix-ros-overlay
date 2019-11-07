
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rclpy, rqt-gui, python3Packages, std-msgs, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-dashing-rqt-plot";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/dashing/rqt_plot/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "91c6e53967a843e09c4401f37a2f84513d73ece27ba1fba2824d868a0feac5dc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python3Packages.numpy rclpy rqt-gui qt-gui-py-common std-msgs rqt-py-common python-qt-binding python3Packages.matplotlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
