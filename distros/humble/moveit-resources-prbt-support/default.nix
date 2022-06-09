
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-support";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_resources_prbt_support/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "b6a86d19f0514b757c319ad5408174e5f71a9256642b14bb6aa4256db6321c7e";
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
