
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rviz-satellite";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/noetic/rviz_satellite/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "2a3606866be36b75ef6412e20b4a552227d4b6afb4593f4f3d745f1611e41d20";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Display satellite map tiles in RViz'';
    license = with lib.licenses; [ asl20 ];
  };
}
