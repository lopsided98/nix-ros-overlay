
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-hardware-interface, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-joint-qualification-controllers";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/joint_qualification_controllers/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "5b66fd370c5cfcf229e952f0aff784deb01504e6688e28ea4aaff40c53ab2ba4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ control-toolbox message-runtime pluginlib pr2-controller-interface pr2-hardware-interface pr2-mechanism-model realtime-tools robot-mechanism-controllers roscpp sensor-msgs std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and for internal WG use.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
