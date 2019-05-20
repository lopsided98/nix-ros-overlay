
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, pcl-ros, std-msgs, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.4.0-1.tar.gz;
    sha256 = "0c4b320a53d2d8b49b6fcf6d0a12782c27b9b8cca45d898287df6fb03b9df8ea";
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
