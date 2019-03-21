
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-controllers, pluginlib, pr2-controller-interface, realtime-tools, catkin, robot-mechanism-controllers, std-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-controllers";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_calibration_controllers/1.10.15-1.tar.gz;
    sha256 = "9ea80cb06d1d5a1c20b6387b178bcc653d63d66d7acce59de628c25d944a9cf3";
  };

  propagatedBuildInputs = [ pr2-mechanism-controllers pluginlib pr2-controller-interface std-msgs realtime-tools roscpp pr2-mechanism-model robot-mechanism-controllers ];
  nativeBuildInputs = [ pr2-mechanism-controllers pluginlib pr2-controller-interface realtime-tools catkin robot-mechanism-controllers std-msgs roscpp pr2-mechanism-model ];

  meta = {
    description = ''The pr2_calibration_controllers package contains the controllers
     used to bring all the joints in the PR2 to a calibrated state.'';
    #license = lib.licenses.BSD;
  };
}
