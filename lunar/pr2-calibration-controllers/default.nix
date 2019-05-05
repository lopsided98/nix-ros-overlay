
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-controllers, pluginlib, pr2-controller-interface, realtime-tools, catkin, robot-mechanism-controllers, std-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-lunar-pr2-calibration-controllers";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/pr2_calibration_controllers/1.10.15-0.tar.gz;
    sha256 = "7ae8a1d90fce8e975bd2700c620a3b3e4e3617f1a7241696a0ad1ff10ffdb4fa";
  };

  buildInputs = [ pr2-mechanism-controllers pluginlib pr2-controller-interface realtime-tools robot-mechanism-controllers std-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-mechanism-controllers pluginlib pr2-controller-interface realtime-tools robot-mechanism-controllers std-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration_controllers package contains the controllers
     used to bring all the joints in the PR2 to a calibrated state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
