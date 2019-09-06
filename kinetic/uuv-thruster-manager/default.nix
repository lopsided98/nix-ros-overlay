
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-assistants, catkin, pythonPackages, rostest, message-generation, uuv-gazebo-ros-plugins-msgs, message-runtime, robot-state-publisher, rospy, std-msgs, rosunit, tf, joint-state-publisher, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-thruster-manager";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_thruster_manager/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "c1acb079ae9cb3ba72c193a1b1673c10d7e46563cf6b578d80aa5d7f08bcff8c";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  checkInputs = [ pythonPackages.numpy xacro uuv-assistants rostest robot-state-publisher joint-state-publisher rosunit geometry-msgs ];
  propagatedBuildInputs = [ uuv-assistants pythonPackages.pyyaml uuv-gazebo-ros-plugins-msgs message-runtime rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
