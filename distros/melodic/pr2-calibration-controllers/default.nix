
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, pr2-controller-interface, pr2-mechanism-controllers, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_calibration_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "70bf36f81db6cb6ce2ca9a2a1f6517b05e1355a6423287ae8f5d114a7ef21d3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib pr2-controller-interface pr2-mechanism-controllers pr2-mechanism-model realtime-tools robot-mechanism-controllers roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration_controllers package contains the controllers
     used to bring all the joints in the PR2 to a calibrated state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
