
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-hebi-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_description-release/archive/release/kinetic/hebi_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "8f42e70157001046209919395024f8f4e1ec62a95063da2e550f399800e5d756";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS models for HEBI components'';
    license = with lib.licenses; [ mit ];
  };
}
