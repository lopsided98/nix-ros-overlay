
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, pcl-ros, std-msgs, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/safety_limiter/0.4.0-1.tar.gz;
    sha256 = "947c63defcf322b59d4ad07692c8739599eefe00f1b633d1d4dcb1ec4847c1c9";
  };

  buildInputs = [ cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp pcl-ros std-msgs roscpp geometry-msgs eigen ];
  checkInputs = [ rostest nav-msgs roslint ];
  propagatedBuildInputs = [ cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp pcl-ros std-msgs roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
