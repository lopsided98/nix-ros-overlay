
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-description";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_description/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d51914b71bb6d74437f82d657e56e620916c7211f2e368ee62f63b54d9028b2a";
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
