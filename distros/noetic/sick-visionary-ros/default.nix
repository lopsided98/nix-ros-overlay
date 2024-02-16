
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, pcl, pcl-conversions, pcl-ros, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-visionary-ros";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_visionary_ros-release/archive/release/noetic/sick_visionary_ros/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "bb13c6c6f1d7c277c733624ea4f504ef464416cfe38f46db70b25eb06a5524e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge diagnostic-updater image-transport pcl pcl-conversions pcl-ros roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Open source drivers for the SICK Visionary-S 3D camera and Visionary-T Mini 3D-ToF camera.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
