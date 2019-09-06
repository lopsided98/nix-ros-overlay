
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, pcl, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, eigen, std-msgs, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "4be65dd20d00d1335e6845d2380c1c804434e44c0780bf3824ea4f8358e4082a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules pcl sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp eigen std-msgs roscpp pcl-conversions geometry-msgs ];
  checkInputs = [ rostest nav-msgs roslint ];
  propagatedBuildInputs = [ cmake-modules pcl sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp eigen std-msgs roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
