
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, eigen, geometry-msgs, nav-msgs, neonavigation-common, pcl, pcl-conversions, pcl-ros, roscpp, roslint, rostest, safety-limiter-msgs, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "4c0108f9ec535e4f82f6d4d8e536411434a1e3d2bf860c9bceb14b99abb7d9cd";
  };

  buildType = "catkin";
  checkInputs = [ nav-msgs roslint rostest tf2-geometry-msgs ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure eigen geometry-msgs neonavigation-common pcl pcl-conversions pcl-ros roscpp safety-limiter-msgs sensor-msgs std-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
