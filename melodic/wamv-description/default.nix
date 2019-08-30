
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-description";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_description/1.2.0-1.tar.gz;
    sha256 = "b6f0faafe0b8f12a075cd37d788f27a5629927e905b6eae8a6475f2c31abe98e";
  };

  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    license = with lib.licenses; [ asl20 ];
  };
}
