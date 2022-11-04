
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rm-calibration-controllers";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_calibration_controllers/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "a2d0f9856c66c2674f610b0cc9ddbee9a764853326e9f8bcf18bf4313351723b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
