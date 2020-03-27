
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, interactive-markers, nav-msgs, neonavigation-common, roscpp, roslint, rostest, rosunit, tf2, tf2-geometry-msgs, tf2-ros, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/trajectory_tracker/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "d6d2097c8f5495896152644ca267798487ab6fe6de51b7d0e6996e054fecce20";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ eigen geometry-msgs interactive-markers nav-msgs neonavigation-common roscpp tf2 tf2-geometry-msgs tf2-ros trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
