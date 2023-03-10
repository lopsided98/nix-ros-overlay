
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, nav-msgs, rm-common, rm-msgs, roscpp, roslint, sensor-msgs, serial, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-referee";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_referee/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "523d5fefadb5653bfaf95e48ed9f104de0693b7744fae07ba5bd5af20b6484ea";
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
