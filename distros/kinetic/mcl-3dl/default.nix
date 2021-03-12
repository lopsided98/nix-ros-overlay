
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, eigen, geometry-msgs, mcl-3dl-msgs, nav-msgs, pcl-ros, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mcl-3dl";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl-release/archive/release/kinetic/mcl_3dl/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "497f94f46c7e119a7a3a66af827baec78ed6e30298298570b4edb57ed3895e23";
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
