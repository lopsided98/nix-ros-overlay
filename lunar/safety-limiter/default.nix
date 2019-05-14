
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, pcl-ros, std-msgs, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-safety-limiter";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/safety_limiter/0.4.0-1.tar.gz;
    sha256 = "e29764ed3e40f5d8ec1170038f8668b4ca46c537cb71671d480d1cd6a91671a9";
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
