
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, laser-geometry, message-generation, message-runtime, parameter-pa, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-pcdfilter-pa";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/tuc-proaut/ros_pcdfilter-release/archive/release/kinetic/pcdfilter_pa/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "c8cf4c9cda0c57cdfba45f7370f95c5f387ee179be2906551321efc02bfaeac4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cv-bridge image-transport laser-geometry message-runtime parameter-pa pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut pointcloud filter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
