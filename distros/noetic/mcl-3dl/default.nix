
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, eigen, geometry-msgs, mcl-3dl-msgs, nav-msgs, pcl-ros, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mcl-3dl";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl-release/archive/release/noetic/mcl_3dl/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "c83da4faf22d1390fe4e1b5ec975fcb5a389dab08854eeaf45fea2c49295d122";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ diagnostic-updater eigen geometry-msgs mcl-3dl-msgs nav-msgs pcl-ros roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
