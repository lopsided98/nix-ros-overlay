
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, std-msgs, std-srvs, tf, catkin, laser-geometry, parameter-pa, image-transport, cv-bridge, pcl-conversions, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pcdfilter-pa";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/tuc-proaut/ros_pcdfilter-release/archive/release/kinetic/pcdfilter_pa/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "c8cf4c9cda0c57cdfba45f7370f95c5f387ee179be2906551321efc02bfaeac4";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs std-msgs std-srvs tf laser-geometry parameter-pa image-transport cv-bridge pcl-conversions roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs std-msgs std-srvs tf laser-geometry parameter-pa image-transport cv-bridge pcl-conversions roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut pointcloud filter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
