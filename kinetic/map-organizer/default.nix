
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, cmake-modules, tf2-geometry-msgs, roslint, pcl, sensor-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, map-organizer-msgs, neonavigation-common, eigen, eigen-conversions, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/map_organizer/0.4.2-1.tar.gz;
    sha256 = "00c64c8858c4e003e94237c7f0627d3c704c562983e44b0e20254b37dacf3277";
  };

  buildInputs = [ map-server cmake-modules tf2-geometry-msgs pcl sensor-msgs tf2-ros tf2 nav-msgs map-organizer-msgs neonavigation-common eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ map-server cmake-modules tf2-geometry-msgs pcl sensor-msgs tf2-ros tf2 nav-msgs neonavigation-common map-organizer-msgs eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
