
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-controllers, pluginlib, pr2-controller-interface, realtime-tools, catkin, robot-mechanism-controllers, std-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-controllers";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_calibration_controllers/1.10.16-1.tar.gz;
    sha256 = "1c83da96ce0544a3f9d2c0a199c38035e8fd8781dc80ac3d4fca0bd21cd66aff";
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
