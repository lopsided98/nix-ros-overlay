
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_bringup/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "ff4ea8760d107a034c61a42f3a941a643d41f8f5b650e17343c000539f2afe78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ heifu-description heifu-mavros heifu-msgs heifu-safety heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu is a ROS driver for PDMFC and BEV drone'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
