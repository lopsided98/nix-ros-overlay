
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-fetch-description";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_description/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "7a794906cc83d3f40730d73fd49c77cb4e29f95ad9198bbcc3c5f28b67b3ac0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF for Fetch Robot.'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
