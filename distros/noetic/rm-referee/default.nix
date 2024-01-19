
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, nav-msgs, rm-common, rm-msgs, roscpp, sensor-msgs, serial, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-referee";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_referee/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "48a23710a7931d809962232af141d89bb49769019a419a076be782c0d6049b7c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib nav-msgs rm-common rm-msgs roscpp sensor-msgs serial std-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
