
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-msgs";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_msgs/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "b6e54d1da79abe2e591a572f800d29826ff53c10bd5f00766c544c7db7c6b0a9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
