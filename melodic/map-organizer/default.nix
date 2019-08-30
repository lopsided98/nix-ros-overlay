
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, cmake-modules, tf2-geometry-msgs, roslint, pcl, sensor-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, map-organizer-msgs, neonavigation-common, eigen, eigen-conversions, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-map-organizer";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/map_organizer/0.4.2-1.tar.gz;
    sha256 = "adad8414dd3011f64623a63b40a3723390aeb67baa0c21a45d183e79471005f3";
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
