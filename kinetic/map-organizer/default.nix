
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, cmake-modules, tf2-geometry-msgs, roslint, sensor-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, map-organizer-msgs, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/map_organizer/0.3.1-0.tar.gz;
    sha256 = "ca7c52de5bce604cdcfd2c50417e1e0b91ca292953b6ed04645e5ca925482e5a";
  };

  buildInputs = [ map-server cmake-modules tf2-geometry-msgs sensor-msgs tf2-ros tf2 nav-msgs map-organizer-msgs neonavigation-common pcl-ros eigen-conversions roscpp geometry-msgs eigen ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ map-server cmake-modules tf2-geometry-msgs sensor-msgs tf2-ros tf2 nav-msgs map-organizer-msgs neonavigation-common pcl-ros eigen-conversions roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
