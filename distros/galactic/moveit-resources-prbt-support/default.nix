
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-prbt-support";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_resources_prbt_support/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "c44974bf50d3716f5a3d36f8fd6158a0b113e247a98cacb2092ea25d1295f350";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
