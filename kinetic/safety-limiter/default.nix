
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, safety-limiter-msgs, pcl, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, eigen, std-msgs, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-safety-limiter";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/safety_limiter/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "13b16ea315c5cce7a872dc876454eec38a364e67c959aab6183d6b72a6e75aeb";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules safety-limiter-msgs pcl sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp eigen std-msgs roscpp pcl-conversions geometry-msgs ];
  checkInputs = [ rostest nav-msgs roslint ];
  propagatedBuildInputs = [ cmake-modules safety-limiter-msgs pcl sensor-msgs tf2-ros diagnostic-updater tf2-sensor-msgs neonavigation-common xmlrpcpp eigen std-msgs roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
