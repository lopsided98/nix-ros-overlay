
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, costmap-cspace-msgs, sensor-msgs, catkin, tf2-ros, roscpp, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, laser-geometry, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-costmap-cspace";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/costmap_cspace/0.4.2-1.tar.gz;
    sha256 = "9ec19bd4292f3e5adf651a39ae09898d0cbfd2b5964e32f2b271d213e7c5674a";
  };

  buildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs roscpp tf2-ros tf2-sensor-msgs nav-msgs neonavigation-common xmlrpcpp laser-geometry geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs roscpp tf2-ros tf2-sensor-msgs nav-msgs neonavigation-common xmlrpcpp laser-geometry geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
