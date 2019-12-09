
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, geometry-msgs, std-msgs, std-srvs, mcl-3dl-msgs, catkin, tf2-sensor-msgs, tf2, rosunit, roslint, tf2-geometry-msgs, eigen, visualization-msgs, roscpp, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-mcl-3dl";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl-release/archive/release/kinetic/mcl_3dl/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "d1564bfc6d25e9493d1b6e6bbe7d21592cf4aec8762afa3832fe3d53c8eeb205";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs geometry-msgs mcl-3dl-msgs std-msgs std-srvs tf2-sensor-msgs roscpp tf2-geometry-msgs eigen visualization-msgs tf2 nav-msgs tf2-ros ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs geometry-msgs std-msgs std-srvs mcl-3dl-msgs tf2-sensor-msgs roscpp tf2-geometry-msgs eigen visualization-msgs tf2 nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
