
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosconsole, sensor-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rplidar-ros";
  version = "1.7.0";

  src = fetchurl {
    url = https://github.com/Slamtec/rplidar_ros-release/archive/release/lunar/rplidar_ros/1.7.0-0.tar.gz;
    sha256 = "b42be1edc26da36ba32dc0d3d81b4a8951c67978810b87a9ba6b34048591ad1c";
  };

  buildInputs = [ std-srvs sensor-msgs roscpp rosconsole ];
  propagatedBuildInputs = [ std-srvs sensor-msgs roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3'';
    #license = lib.licenses.BSD;
  };
}
