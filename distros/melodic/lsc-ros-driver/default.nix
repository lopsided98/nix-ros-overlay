
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lsc-ros-driver";
  version = "1.0.3-r10";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros_driver-release/archive/release/melodic/lsc_ros_driver/1.0.3-10.tar.gz";
    name = "1.0.3-10.tar.gz";
    sha256 = "44ff07ff43a39ec772bab4552eb3fd999835ad3b36978f6dd1e943d90fa62943";
  };

  buildType = "catkin";
  buildInputs = [ catkin diagnostic-updater self-test ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver package for LSC-C Series'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
