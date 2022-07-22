
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, map-organizer-msgs, map-server, nav-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-map-organizer";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/map_organizer/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "f332f7aec5dfcb61a9a378f5b62ce58b44da29fb963143fb61eb3e71742e9eb5";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs map-organizer-msgs map-server nav-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
