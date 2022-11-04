
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_bringup/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "6798c1d532a30c3c156470eaeb00c13c680f33de1ebe5af1dc7a0b8daeff3c2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ heifu-description heifu-mavros heifu-msgs heifu-safety heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu is a ROS driver for PDMFC and BEV drone'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
