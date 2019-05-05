
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, tf2-geometry-msgs, sensor-msgs, catkin, tf2-ros, tf2-sensor-msgs, tf2, nav-msgs, mcl-3dl-msgs, rostest, visualization-msgs, pcl-ros, std-msgs, roscpp, rosunit, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-mcl-3dl";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/at-wat/mcl_3dl-release/archive/release/melodic/mcl_3dl/0.1.4-0.tar.gz;
    sha256 = "28b8194bd2312f9add9f1d4350364f6adcaab721056dbaa6924d99e727137371";
  };

  buildInputs = [ std-srvs tf2-geometry-msgs sensor-msgs tf2-ros roscpp tf2-sensor-msgs tf2 mcl-3dl-msgs nav-msgs pcl-ros std-msgs visualization-msgs geometry-msgs eigen ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ std-srvs tf2-geometry-msgs sensor-msgs tf2-ros roscpp tf2-sensor-msgs tf2 mcl-3dl-msgs nav-msgs pcl-ros std-msgs visualization-msgs geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
