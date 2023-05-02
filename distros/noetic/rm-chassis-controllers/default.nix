
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-interface, effort-controllers, rm-common, robot-localization, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-chassis-controllers";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_chassis_controllers/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "f78764ed0472b7c2ff8ee5f2fe4db5fb61d75ad90f2bb481cbe08a8b0ae65205";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles controller-interface effort-controllers rm-common robot-localization roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Chassis controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
