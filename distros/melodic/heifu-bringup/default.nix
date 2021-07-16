
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-bringup, gcs-interface, waypoints-manager }:
buildRosPackage {
  pname = "ros-melodic-heifu-bringup";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu-bringup/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "280568e8c2f0b548046ff3b0d4a51bc3208704665a62d3697ad4830b0409cac3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-bringup gcs-interface waypoints-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heifu-bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
