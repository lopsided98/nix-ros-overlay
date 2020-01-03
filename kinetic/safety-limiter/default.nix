
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-updater, eigen, geometry-msgs, nav-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, safety-limiter-msgs, sensor-msgs, std-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "13b16ea315c5cce7a872dc876454eec38a364e67c959aab6183d6b72a6e75aeb";
  };

  buildType = "catkin";
  checkInputs = [ nav-msgs roslint rostest ];
  propagatedBuildInputs = [ cmake-modules diagnostic-updater eigen geometry-msgs neonavigation-common pcl pcl-conversions roscpp safety-limiter-msgs sensor-msgs std-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
