
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, geometry-msgs, nav-msgs, nodelet, pluginlib, roscpp, roslint, std-msgs, tf, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-ackermann";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_ackermann/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5aed1822b651bcf1f64731bd31ff8a13a3d89a1f84827091ea74a63f7a93cb2a";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs nodelet pluginlib roscpp std-msgs tf vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translate between VESC messages and ROS ackermann and odometry messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
