
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-hardware, pluginlib, pr2-controller-interface, pr2-mechanism-model, pr2-mechanism-msgs, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-pr2-motor-diagnostic-tool";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/pr2_motor_diagnostic_tool/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "e75790673805832f38a80872b25fabef1aa2022bea66ee125c370be5fe1fbbc7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ethercat-hardware pluginlib pr2-controller-interface pr2-mechanism-model pr2-mechanism-msgs rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_motor_diagnostic_tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
