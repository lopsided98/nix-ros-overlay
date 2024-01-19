
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-hardware, pluginlib, pr2-controller-interface, pr2-mechanism-model, pr2-mechanism-msgs, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-pr2-motor-diagnostic-tool";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/pr2_motor_diagnostic_tool/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "b0e0b0abde21ceeda34af122c65c952245a9bc99ecbff3477579504163828801";
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
