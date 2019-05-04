
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-transport, sensor-msgs, cv-bridge, catkin, parameter-pa, roscpp, laser-geometry, message-generation, message-runtime, pcl-ros, std-msgs, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-pcdfilter-pa";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/tuc-proaut/ros_pcdfilter-release/archive/release/kinetic/pcdfilter_pa/1.2.0-0.tar.gz;
    sha256 = "c8cf4c9cda0c57cdfba45f7370f95c5f387ee179be2906551321efc02bfaeac4";
  };

  buildInputs = [ std-srvs image-transport parameter-pa sensor-msgs cv-bridge roscpp laser-geometry message-generation pcl-ros std-msgs tf pcl-conversions ];
  propagatedBuildInputs = [ std-srvs image-transport parameter-pa sensor-msgs cv-bridge roscpp laser-geometry message-runtime pcl-ros std-msgs tf pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut pointcloud filter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
