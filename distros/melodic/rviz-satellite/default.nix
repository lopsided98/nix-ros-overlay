
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rviz-satellite";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/melodic/rviz_satellite/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "4fd1277f66deb468cddf432aef90edc9d53e65ee2e2a9eacd5a29ea4414db215";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Display satellite map tiles in RViz'';
    license = with lib.licenses; [ asl20 ];
  };
}
