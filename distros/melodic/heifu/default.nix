
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-bringup, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-simple-waypoint, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "8436cf31ff37312589400f124aeaeed1aacb9093847ea92546287d8e1147c909";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ heifu-bringup heifu-description heifu-mavros heifu-msgs heifu-safety heifu-simple-waypoint heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heifu metapackage that installs all heifu related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
