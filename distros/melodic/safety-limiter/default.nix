
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-updater, eigen, geometry-msgs, nav-msgs, neonavigation-common, pcl, pcl-conversions, pcl-ros, roscpp, roslint, rostest, safety-limiter-msgs, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/safety_limiter/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "e2542386d58be3497b222c7a5d7537c3f5aec1af9eedba829dd3fd4265900cd1";
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
