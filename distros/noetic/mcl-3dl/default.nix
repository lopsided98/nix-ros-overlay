
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, eigen, geometry-msgs, mcl-3dl-msgs, nav-msgs, pcl-ros, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mcl-3dl";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl-release/archive/release/noetic/mcl_3dl/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "377051c7668e2ca049915362a394f6f641643d5775b88ff60d02abad163e3b48";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ diagnostic-updater eigen geometry-msgs mcl-3dl-msgs nav-msgs pcl-ros roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
