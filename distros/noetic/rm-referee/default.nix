
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, nav-msgs, rm-common, rm-msgs, roscpp, roslint, sensor-msgs, serial, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-referee";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_referee/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "d1ed13b18a52ae96012a31b953ee93164f67abdf6b5ad2ec69c9b79ae8b909a5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib nav-msgs rm-common rm-msgs roscpp roslint sensor-msgs serial std-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
