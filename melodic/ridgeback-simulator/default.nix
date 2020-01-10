
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-gazebo }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-simulator";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/melodic/ridgeback_simulator/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b42f5b32cf7af40f722cb3ba97737601f7cb877a106a3ea273616f374bda8603";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ridgeback-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
