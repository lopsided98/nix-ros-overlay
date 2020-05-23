
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, interactive-markers, nav-msgs, neonavigation-common, roscpp, roslint, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-tracker";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/trajectory_tracker/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "62a7a6fb90d8d2f67162f4cbe01e037dfc538eb490045fefc7d8f0a1116241a1";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs interactive-markers nav-msgs neonavigation-common roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
