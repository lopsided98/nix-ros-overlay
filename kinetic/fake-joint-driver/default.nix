
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, hardware-interface, robot-state-publisher, position-controllers, catkin, roslint, roscpp, joint-trajectory-controller, roslaunch, rostest, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-driver";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_driver/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5efd962625fe2f2c1ff41a08768f34ad796a51b64325ccb4d59e48cf0aa36efc";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf hardware-interface roscpp roslaunch ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ xacro controller-manager urdf robot-state-publisher hardware-interface position-controllers roscpp joint-trajectory-controller roslaunch joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fake_joint_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
