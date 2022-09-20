
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, geometry-msgs, nav-msgs, nodelet, pluginlib, roscpp, roslint, std-msgs, tf, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-ackermann";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc_ackermann/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "55d81b4911aceacfd99577263e426533fd70421f98d41257f36602e1d21e02de";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs nodelet pluginlib roscpp std-msgs tf vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translate between VESC messages and ROS ackermann and odometry messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
