
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographiclib, qt5, roscpp, rviz, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rviz-satellite";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/noetic/rviz_satellite/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0481897bc7c212a5f04a0421609fa4855c02654f129568f6749bd27f564eaf4b";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase tf2-geometry-msgs ];
  propagatedBuildInputs = [ geographiclib roscpp rviz sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Display satellite map tiles in RViz'';
    license = with lib.licenses; [ asl20 ];
  };
}
