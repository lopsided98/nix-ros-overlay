
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, map-organizer-msgs, map-server, nav-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/map_organizer/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "64dea002474f25b9b4c74ae5bba3d58c60eecddf27f0a685e5d22adae80d1d43";
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
