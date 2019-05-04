
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, neonavigation-common, xmlrpcpp, pcl-ros, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.3.1-0.tar.gz;
    sha256 = "c97415e8cd8db969c106e1be4be5e39c497730eb76729147baa0c3abc0839bae";
  };

  buildInputs = [ cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp pcl-ros roscpp geometry-msgs eigen ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp pcl-ros roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
