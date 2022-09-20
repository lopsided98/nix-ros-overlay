
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, roslaunch, roslint, tf2-ros, vrpn }:
buildRosPackage {
  pname = "ros-melodic-vrpn-client-ros";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn_client_ros-release/archive/release/melodic/vrpn_client_ros/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "1aab125d405ed53be48b7f49db7594343f35cccfecd3f4ef14571311ff5ae0f2";
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
