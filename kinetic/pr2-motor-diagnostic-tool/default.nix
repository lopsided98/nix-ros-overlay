
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, rqt-gui-py, ethercat-hardware, pluginlib, pr2-controller-interface, rqt-gui, catkin, rospy, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-pr2-motor-diagnostic-tool";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_motor_diagnostic_tool/1.0.14-0.tar.gz;
    sha256 = "2dd9f1c99a5c9aaf06ce9d1921bb4fbfe3a69153f199699d5b324ec47b82212d";
  };

  propagatedBuildInputs = [ pr2-mechanism-msgs rqt-gui-py pluginlib pr2-controller-interface rospy ethercat-hardware rqt-gui pr2-mechanism-model ];
  nativeBuildInputs = [ pr2-mechanism-msgs rqt-gui-py pluginlib pr2-controller-interface ethercat-hardware rqt-gui catkin rospy pr2-mechanism-model ];

  meta = {
    description = ''pr2_motor_diagnostic_tool'';
    #license = lib.licenses.BSD;
  };
}
