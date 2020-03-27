
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-updater, eigen, geometry-msgs, nav-msgs, neonavigation-common, pcl, pcl-conversions, pcl-ros, roscpp, roslint, rostest, safety-limiter-msgs, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "49fe087d5ed1b8012baa832282939e984386af864738f18550ecaabd3a0f24a9";
  };

  buildType = "catkin";
  checkInputs = [ nav-msgs roslint rostest tf2-geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules diagnostic-updater eigen geometry-msgs neonavigation-common pcl pcl-conversions pcl-ros roscpp safety-limiter-msgs sensor-msgs std-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
