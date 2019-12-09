
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, message-generation, sensor-msgs, geometry-msgs, std-msgs, std-srvs, cmake-modules, catkin, roscpp, roslint, tf2, message-runtime, nav-msgs, tf2-ros, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-microstrain-mips";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/microstrain_mips-release/archive/release/kinetic/microstrain_mips/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "d6c4c251c76eaef3097568610e88debec4dd7805ba9dd49358c677abcc7d80ab";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs std-srvs cmake-modules roscpp roslint tf2 message-generation nav-msgs tf2-ros diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-aggregator sensor-msgs geometry-msgs std-msgs std-srvs tf2 cmake-modules roscpp message-runtime nav-msgs tf2-ros diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_mips package provides a driver for the LORD/Microstrain 3DM_GX5_XX GPS-aided IMU sensor.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
