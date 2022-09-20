
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rplidar-ros";
  version = "1.7.0";

  src = fetchurl {
    url = "https://github.com/Slamtec/rplidar_ros-release/archive/release/melodic/rplidar_ros/1.7.0-0.tar.gz";
    name = "1.7.0-0.tar.gz";
    sha256 = "548d65fb0fba265d22e0ad2e2fdb4d522f97a751b62bf01fb7dfbac36e9899d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
