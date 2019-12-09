
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-generation, geometry-msgs, std-msgs, std-srvs, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-msgs";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_msgs/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "ff53a0b3d0e402bf0218af2253fd24bde358d7bbabb9e839f71116323f0d7b4b";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs message-generation ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures for interacting with Gazebo from ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
