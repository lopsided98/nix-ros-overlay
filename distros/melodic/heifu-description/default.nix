
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heifu-description";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_description/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "0369bf2653fd75c28e5a1718be91311108bf971e869dc42d6c2dcbd05219ee16";
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
