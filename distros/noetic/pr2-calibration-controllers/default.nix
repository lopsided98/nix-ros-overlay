
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, pr2-controller-interface, pr2-mechanism-controllers, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-calibration-controllers";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/pr2_calibration_controllers/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "80da6ee89676f08f30ce5148a52d0d63aefe3db6b58f0ae0c4a0ee445761b1c9";
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
