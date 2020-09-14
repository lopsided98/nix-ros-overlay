
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_bringup/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "3e83f9735135fd345e0300fce6b54b2797f1dc91523643cdbacdcf123f856a8d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ heifu-description heifu-mavros heifu-msgs heifu-safety heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu is a ROS driver for PDMFC and BEV drone'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
