
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, xmlrpcpp, std-msgs, safety-limiter-msgs, catkin, tf2-sensor-msgs, cmake-modules, pcl, neonavigation-common, roslint, eigen, pcl-conversions, roscpp, nav-msgs, rostest, tf2-ros, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-safety-limiter";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/safety_limiter/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "28056423f972bfdafd1ea71ba51d1d78911494241657813b5840ee34e7148db1";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs xmlrpcpp std-msgs cmake-modules tf2-sensor-msgs pcl neonavigation-common eigen pcl-conversions roscpp safety-limiter-msgs tf2-ros diagnostic-updater ];
  checkInputs = [ nav-msgs rostest roslint ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs xmlrpcpp std-msgs cmake-modules tf2-sensor-msgs neonavigation-common pcl eigen pcl-conversions roscpp safety-limiter-msgs tf2-ros diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Motion limiter package for collision prevention'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
