
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-description";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wamv_description/1.1.2-1.tar.gz;
    sha256 = "2638f86176dd3707c819434d7d7116d09036d049d63d8eee409a306be8166a2a";
  };

  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a URDF model of WAM-V'';
    license = with lib.licenses; [ asl20 ];
  };
}
