
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-abb-robot-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/melodic/abb_robot_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "d85ff175388dd0693ecfe34db524d156a56b0920c404893b7758ccf98188d76d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message and service definitions, representing basic interaction with ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
