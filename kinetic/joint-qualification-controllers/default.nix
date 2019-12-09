
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, pr2-mechanism-model, robot-mechanism-controllers, urdf, control-toolbox, pluginlib, std-msgs, catkin, pr2-controller-interface, realtime-tools, roscpp, pr2-hardware-interface, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-joint-qualification-controllers";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/joint_qualification_controllers/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "5b66fd370c5cfcf229e952f0aff784deb01504e6688e28ea4aaff40c53ab2ba4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs pr2-mechanism-model urdf robot-mechanism-controllers control-toolbox pluginlib std-msgs pr2-controller-interface realtime-tools roscpp pr2-hardware-interface message-generation ];
  propagatedBuildInputs = [ sensor-msgs pr2-mechanism-model urdf robot-mechanism-controllers control-toolbox pluginlib std-msgs pr2-controller-interface realtime-tools roscpp pr2-hardware-interface message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and for internal WG use.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
