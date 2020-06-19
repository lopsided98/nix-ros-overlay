
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-leo-description";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_description-release/archive/release/melodic/leo_description/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2e6b81531ab0493e73e6083379a277d4ccd6f886879818f3a77261a74372876e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
