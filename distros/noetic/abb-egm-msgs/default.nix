
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-abb-egm-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/noetic/abb_egm_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "1caf1244bc234cfed82bfcbb9ea1a11737ed948034dd1ff1c60adbd7bb521613";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message definitions, representing Externally Guided Motion (EGM) data from ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
