
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, pcl, pcl-conversions, pcl-ros, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-visionary-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_visionary_ros-release/archive/release/noetic/sick_visionary_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1f3fe4c97bf170f9121a5814902edb7cd3eb03d931eb07b0e964c75f4de28166";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport pcl pcl-conversions pcl-ros roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Open source drivers for the SICK Visionary-S 3D camera and Visionary-T Mini 3D-ToF camera.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
