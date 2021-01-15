
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, pr2-controller-interface, pr2-mechanism-controllers, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_calibration_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "e5277d6f28bd2320220e4919f18a20be95082acb76f0eec2d96e73db9e1c793c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pluginlib pr2-controller-interface pr2-mechanism-controllers pr2-mechanism-model realtime-tools robot-mechanism-controllers roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration_controllers package contains the controllers
     used to bring all the joints in the PR2 to a calibrated state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
