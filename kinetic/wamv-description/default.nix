
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-description";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wamv_description/1.2.0-1.tar.gz;
    sha256 = "c4fe7f40ed1b3ae7bcd98a282a9178f6b21eecbe2f9cd3bd33116ba018d0d482";
  };

  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    license = with lib.licenses; [ asl20 ];
  };
}
