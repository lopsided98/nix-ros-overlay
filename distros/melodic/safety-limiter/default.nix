
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-updater, eigen, geometry-msgs, nav-msgs, neonavigation-common, pcl, pcl-conversions, pcl-ros, roscpp, roslint, rostest, safety-limiter-msgs, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/safety_limiter/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "5fdef3a8da0aedc459520cb4ae07fcdcc753d16ac5e05ccda8213c6421090d89";
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
