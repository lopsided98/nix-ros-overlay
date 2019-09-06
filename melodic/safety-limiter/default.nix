
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslint, pcl, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, eigen, std-msgs, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/safety_limiter/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "8523dfebde968e1206db434b22d9ef8222382024d6669556be24b1d699d126cb";
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
