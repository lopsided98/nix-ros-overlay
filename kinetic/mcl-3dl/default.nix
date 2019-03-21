
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, tf2-geometry-msgs, sensor-msgs, catkin, tf2-ros, rostest, tf2-sensor-msgs, nav-msgs, tf2, mcl-3dl-msgs, visualization-msgs, pcl-ros, std-msgs, roscpp, rosunit, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-mcl-3dl";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/at-wat/mcl_3dl-release/archive/release/kinetic/mcl_3dl/0.1.4-0.tar.gz;
    sha256 = "152b77d380c515cba07983a2ba48ed8cd7908ea2cda9710bd6b1a365a3507ff6";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs sensor-msgs tf2-ros roscpp tf2-sensor-msgs tf2 mcl-3dl-msgs nav-msgs pcl-ros std-msgs visualization-msgs geometry-msgs eigen ];
  nativeBuildInputs = [ std-srvs tf2-geometry-msgs sensor-msgs catkin tf2-ros roscpp tf2-sensor-msgs tf2 mcl-3dl-msgs nav-msgs pcl-ros std-msgs visualization-msgs geometry-msgs eigen ];

  meta = {
    description = ''3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)'';
    #license = lib.licenses.BSD;
  };
}
