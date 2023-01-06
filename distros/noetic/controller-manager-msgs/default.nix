
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-msgs";
  version = "0.19.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_msgs/0.19.6-1.tar.gz";
    name = "0.19.6-1.tar.gz";
    sha256 = "d2dffc22d89e2c629a4f48688f175c6744058d749b8cf22db703edea21c558e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
