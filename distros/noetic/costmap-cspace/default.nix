
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, geometry-msgs, laser-geometry, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-costmap-cspace";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/costmap_cspace/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "5db84865b067d2d7e5ca7411d1136ac1043f383c53df00c3f48719f97c75f78d";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ costmap-cspace-msgs geometry-msgs laser-geometry nav-msgs neonavigation-common roscpp sensor-msgs tf2-geometry-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
