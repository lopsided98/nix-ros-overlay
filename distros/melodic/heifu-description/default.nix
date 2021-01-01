
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heifu-description";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_description/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "40a82ac71270a3039c5051949b65a96efca31568364b246ee0eca46bd11d5624";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SDF robot description for HEIFU'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
