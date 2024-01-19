
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, effort-controllers, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_calibration_controllers/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "a5fd8f5dc6c1f279d4ddf39ee8f95ad4e521423607a73a6cca31b241a74197be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface effort-controllers rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
