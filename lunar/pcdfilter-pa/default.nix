
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, image-transport, sensor-msgs, cv-bridge, catkin, roscpp, laser-geometry, message-generation, message-runtime, pcl-ros, std-msgs, parameter-pa, pcl-conversions }:
buildRosPackage {
  pname = "ros-lunar-pcdfilter-pa";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/tuc-proaut/ros_pcdfilter-release/archive/release/lunar/pcdfilter_pa/1.2.0-0.tar.gz;
    sha256 = "d18c799d5ee56b532e79e4418c7c299b0721b1fac9ebb355db9d8ad13f9b7eed";
  };

  buildInputs = [ std-srvs tf image-transport sensor-msgs cv-bridge roscpp laser-geometry message-generation pcl-ros std-msgs parameter-pa pcl-conversions ];
  propagatedBuildInputs = [ std-srvs tf image-transport sensor-msgs cv-bridge roscpp laser-geometry message-runtime pcl-ros std-msgs parameter-pa pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut pointcloud filter package'';
    #license = lib.licenses.BSD;
  };
}
