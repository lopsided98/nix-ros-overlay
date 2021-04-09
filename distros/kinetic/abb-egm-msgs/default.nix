
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-abb-egm-msgs";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/kinetic/abb_egm_msgs/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "3ad2e7d74142407966089294660a371cba6a5f26a5c6a4066265c9ebf0f9b70b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message definitions, representing Externally Guided Motion (EGM) data from ABB robot controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
