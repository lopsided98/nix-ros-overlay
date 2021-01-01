
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_bringup/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "b5292d49d10add478c8c5f233f7d8deada85f1385a85e50eb3fa59fbbaf5a601";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ heifu-description heifu-mavros heifu-msgs heifu-safety heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu is a ROS driver for PDMFC and BEV drone'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
