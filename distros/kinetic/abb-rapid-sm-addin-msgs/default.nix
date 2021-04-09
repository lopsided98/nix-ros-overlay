
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-rapid-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-abb-rapid-sm-addin-msgs";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/kinetic/abb_rapid_sm_addin_msgs/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "e5c2522ce93b479264c74c7ed989b0b82e4f70be2f3da969576245b7e5e4693d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-rapid-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message and service definitions, representing interaction
    with ABB robot controllers using the RobotWare StateMachine Add-In.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
