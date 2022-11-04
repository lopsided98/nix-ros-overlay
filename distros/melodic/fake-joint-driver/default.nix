
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roscpp, roslaunch, roslint, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fake-joint-driver";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/melodic/fake_joint_driver/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "fe4cc169633ac8e081d1ad84a6a594ce832751b07ad862516568fc9f834b7083";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher roscpp roslaunch urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fake_joint_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
