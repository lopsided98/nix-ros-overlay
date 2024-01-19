
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, roslaunch, roslint, tf2-ros, vrpn }:
buildRosPackage {
  pname = "ros-noetic-vrpn-client-ros";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn_client_ros-release/archive/release/noetic/vrpn_client_ros/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "5ddc73e572937b826c76963d36a8118b5670c45ff4f7324ef62d1c83205ab4e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ geometry-msgs roscpp tf2-ros vrpn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS client nodes for the <a href="https://github.com/vrpn/vrpn/wiki">VRPN</a> library, compatible with VICON, OptiTrack, and other <a href="https://github.com/vrpn/vrpn/wiki/Supported-hardware-devices">hardware interfaces</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
