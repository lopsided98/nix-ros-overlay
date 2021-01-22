
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-hardware-interface, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-joint-qualification-controllers";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/joint_qualification_controllers/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "479200ec0c009cee31a2eaf0bb794dd9b97ad57d3b8929ac8a2cc851e9b3a6bb";
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
