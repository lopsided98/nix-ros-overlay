
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, roslint, catkin, joint-trajectory-controller, rostest, position-controllers, urdf, robot-state-publisher, roslaunch, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_driver/0.0.2-1.tar.gz;
    sha256 = "5efd962625fe2f2c1ff41a08768f34ad796a51b64325ccb4d59e48cf0aa36efc";
  };

  buildInputs = [ controller-manager hardware-interface urdf roslaunch roscpp xacro ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers urdf robot-state-publisher roslaunch roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fake_joint_driver package'';
    #license = lib.licenses.Apache License 2.0;
  };
}
