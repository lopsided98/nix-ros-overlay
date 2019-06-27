
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2, nav-msgs, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-microstrain-mips";
  version = "0.0.2-r2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/microstrain_mips-release/archive/release/kinetic/microstrain_mips/0.0.2-2.tar.gz;
    sha256 = "f17c63a702deb8cbac9e07484273b1f60326143a02678c9080e2d3a33fd63dcb";
  };

  buildInputs = [ std-srvs cmake-modules sensor-msgs tf2-ros tf2 nav-msgs message-generation std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2 nav-msgs message-runtime std-msgs roscpp geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_mips package provides a driver for the LORD/Microstrain 3DM_GX5_XX GPS-aided IMU sensor.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
