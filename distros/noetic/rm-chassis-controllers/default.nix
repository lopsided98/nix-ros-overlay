
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, rm-common, robot-localization, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "c0163c5f96d0568d3626193dacef22730509ce69e2cb0fbd2b3a52f2487d685f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ effort-controllers rm-common robot-localization roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
