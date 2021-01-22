
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roscpp, roslaunch, roslint, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_driver/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5efd962625fe2f2c1ff41a08768f34ad796a51b64325ccb4d59e48cf0aa36efc";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher roscpp roslaunch urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fake_joint_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
