
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-msgs, diagnostic-msgs, diagnostic-updater, geometry-msgs, libcreate, nav-msgs, roscpp, roslint, sensor-msgs, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-create-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/melodic/create_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "864f9b95c34d39584496877981bb7e17c36281b995d652382cd649621205b95b";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ create-msgs diagnostic-msgs diagnostic-updater geometry-msgs libcreate nav-msgs roscpp sensor-msgs std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for iRobot's Create and Roomba platforms, based on libcreate'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
