
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wamv_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "fc9a9bddbb7de87a4bcf06be5a7e2cd1d2aa2a41d3ce97b81baa3eece1531537";
  };

  buildType = "catkin";
  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    license = with lib.licenses; [ asl20 ];
  };
}
