
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, pr2-mechanism-model, pluginlib, catkin, pr2-controller-interface, ethercat-hardware, rqt-gui-py, rospy, pr2-mechanism-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-motor-diagnostic-tool";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_motor_diagnostic_tool/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "cbbf7f4dd6a577c6ad1fe47fa7539c48257b0847480f5912625dea325fdc98da";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui pr2-mechanism-model pluginlib pr2-controller-interface ethercat-hardware rqt-gui-py rospy pr2-mechanism-msgs ];
  propagatedBuildInputs = [ rqt-gui pr2-mechanism-model pluginlib pr2-controller-interface ethercat-hardware rqt-gui-py rospy pr2-mechanism-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_motor_diagnostic_tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
