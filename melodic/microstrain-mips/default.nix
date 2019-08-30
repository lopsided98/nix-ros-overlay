
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, cmake-modules, sensor-msgs, catkin, tf2-ros, diagnostic-updater, tf2, nav-msgs, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-microstrain-mips";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/microstrain_mips-release/archive/release/melodic/microstrain_mips/0.0.3-1.tar.gz;
    sha256 = "e2515dc2da635d80ae7b579480bdd99af254238a034528dea3deb3248c806ffd";
  };

  buildInputs = [ std-srvs roslint cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2 nav-msgs message-generation std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cmake-modules sensor-msgs tf2-ros diagnostic-updater tf2 nav-msgs message-runtime std-msgs roscpp geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_mips package provides a driver for the LORD/Microstrain 3DM_GX5_XX GPS-aided IMU sensor.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
