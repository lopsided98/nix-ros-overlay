
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-hardware-interface, pluginlib, pr2-controller-interface, realtime-tools, control-toolbox, sensor-msgs, catkin, robot-mechanism-controllers, message-generation, urdf, message-runtime, std-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-joint-qualification-controllers";
  version = "1.0.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/joint_qualification_controllers/1.0.15-1.tar.gz;
    sha256 = "5b66fd370c5cfcf229e952f0aff784deb01504e6688e28ea4aaff40c53ab2ba4";
  };

  buildInputs = [ pr2-hardware-interface pluginlib pr2-controller-interface realtime-tools control-toolbox sensor-msgs robot-mechanism-controllers message-generation urdf std-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-hardware-interface pluginlib pr2-controller-interface realtime-tools control-toolbox sensor-msgs robot-mechanism-controllers urdf message-runtime std-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and for internal WG use.'';
    #license = lib.licenses.BSD;
  };
}
