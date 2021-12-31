
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-prbt-support";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_resources_prbt_support/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "278f6c1c0cc74159ba9c68f4936bd7565576128a37af499bac8fd22d0235ecad";
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
