
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2, nav-msgs, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-microstrain-mips";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/microstrain_mips-release/archive/release/melodic/microstrain_mips/0.0.2-1.tar.gz;
    sha256 = "c078e1feeafe6d88910fab89b4d6c5e20c006a0a3b15207513778e8f013059b9";
  };

  buildInputs = [ std-srvs cmake-modules sensor-msgs tf2-ros tf2 nav-msgs message-generation std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2 nav-msgs message-runtime std-msgs roscpp geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_mips package provides a driver for the LORD/Microstrain 3DM_GX5_XX GPS-aided IMU sensor.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
