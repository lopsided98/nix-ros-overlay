
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, effort-controllers, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rm-shooter-controllers";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_shooter_controllers/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "3a76f28ce089c47d3ccb98991470b87e9f0dbbb2efafc77dc6752fbadb9a9da0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure effort-controllers rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Shooter controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
