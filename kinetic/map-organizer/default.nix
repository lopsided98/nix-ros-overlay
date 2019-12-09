
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, eigen-conversions, map-server, catkin, tf2, cmake-modules, neonavigation-common, pcl, roslint, tf2-geometry-msgs, eigen, pcl-conversions, roscpp, map-organizer-msgs, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/map_organizer/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "27f81cfc2999d57f73b1adef94528d275620bf17e1efe298500f573b341fc947";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs eigen-conversions map-server cmake-modules roscpp neonavigation-common pcl tf2-geometry-msgs eigen pcl-conversions tf2 map-organizer-msgs nav-msgs tf2-ros ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs eigen-conversions map-server cmake-modules roscpp neonavigation-common pcl tf2-geometry-msgs eigen pcl-conversions tf2 map-organizer-msgs nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
