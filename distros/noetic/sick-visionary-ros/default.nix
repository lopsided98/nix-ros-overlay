
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, pcl, pcl-conversions, pcl-ros, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-visionary-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_visionary_ros-release/archive/release/noetic/sick_visionary_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "61e2b6539448525998f4aa119b8c41c42f0dea810c2977833d708fbeae264b4f";
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
