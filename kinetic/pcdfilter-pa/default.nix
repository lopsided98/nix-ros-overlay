
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, image-transport, sensor-msgs, cv-bridge, catkin, roscpp, laser-geometry, message-generation, message-runtime, pcl-ros, std-msgs, parameter-pa, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-pcdfilter-pa";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/tuc-proaut/ros_pcdfilter-release/archive/release/kinetic/pcdfilter_pa/1.2.0-0.tar.gz;
    sha256 = "c8cf4c9cda0c57cdfba45f7370f95c5f387ee179be2906551321efc02bfaeac4";
  };

  propagatedBuildInputs = [ std-srvs tf image-transport sensor-msgs cv-bridge roscpp laser-geometry message-runtime pcl-ros std-msgs parameter-pa pcl-conversions ];
  nativeBuildInputs = [ std-srvs tf image-transport sensor-msgs cv-bridge catkin roscpp laser-geometry message-generation pcl-ros std-msgs parameter-pa pcl-conversions ];

  meta = {
    description = ''ProAut pointcloud filter package'';
    #license = lib.licenses.BSD;
  };
}
