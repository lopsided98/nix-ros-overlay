
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, message-generation, xacro, geometry-msgs, uuv-gazebo-ros-plugins-msgs, message-runtime, robot-state-publisher, std-msgs, uuv-assistants, pythonPackages, tf, catkin, rosunit, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-uuv-thruster-manager";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_thruster_manager/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "1ab65fc013e0365a7d680c40c82f7ed9a1d1ab91514376795bf5160f80f0cdea";
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
