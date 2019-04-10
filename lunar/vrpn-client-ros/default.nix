
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, tf2-ros, vrpn, roslaunch, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-vrpn-client-ros";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/vrpn_client_ros-release/archive/release/lunar/vrpn_client_ros/0.2.2-0.tar.gz;
    sha256 = "df7c36bff4f7e8ec62d172874853616f5c3d53d463a45cb461c3ea09595d343b";
  };

  buildInputs = [ roscpp tf2-ros geometry-msgs vrpn ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ roscpp tf2-ros geometry-msgs vrpn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS client nodes for the <a href="https://github.com/vrpn/vrpn/wiki">VRPN</a> library, compatible with VICON, OptiTrack, and other <a href="https://github.com/vrpn/vrpn/wiki/Supported-hardware-devices">hardware interfaces</a>.'';
    #license = lib.licenses.BSD;
  };
}
