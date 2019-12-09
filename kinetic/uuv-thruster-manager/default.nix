
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, message-generation, xacro, geometry-msgs, uuv-gazebo-ros-plugins-msgs, message-runtime, robot-state-publisher, std-msgs, uuv-assistants, pythonPackages, tf, catkin, rosunit, rospy, rostest }:
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
  checkInputs = [ joint-state-publisher pythonPackages.numpy xacro geometry-msgs robot-state-publisher uuv-assistants rosunit rostest ];
  propagatedBuildInputs = [ pythonPackages.pyyaml geometry-msgs uuv-gazebo-ros-plugins-msgs std-msgs uuv-assistants tf rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
