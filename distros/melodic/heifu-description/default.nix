
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heifu-description";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_description/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "56a7acf0c940519055b6423aac229336748087483a87a4bff547372c620462ef";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SDF robot description for HEIFU'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
