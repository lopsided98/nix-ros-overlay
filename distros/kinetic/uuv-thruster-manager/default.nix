
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joint-state-publisher, message-generation, message-runtime, pythonPackages, robot-state-publisher, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-gazebo-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-uuv-thruster-manager";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_thruster_manager/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "c1acb079ae9cb3ba72c193a1b1673c10d7e46563cf6b578d80aa5d7f08bcff8c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ geometry-msgs joint-state-publisher pythonPackages.numpy robot-state-publisher rostest rosunit uuv-assistants xacro ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pythonPackages.pyyaml rospy std-msgs tf uuv-assistants uuv-gazebo-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
