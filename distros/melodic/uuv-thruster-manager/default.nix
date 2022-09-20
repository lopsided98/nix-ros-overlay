
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joint-state-publisher, message-generation, message-runtime, pythonPackages, robot-state-publisher, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-gazebo-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-thruster-manager";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_thruster_manager/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "1ab65fc013e0365a7d680c40c82f7ed9a1d1ab91514376795bf5160f80f0cdea";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ geometry-msgs joint-state-publisher pythonPackages.numpy robot-state-publisher rostest rosunit uuv-assistants xacro ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pythonPackages.pyyaml rospy std-msgs tf uuv-assistants uuv-gazebo-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
