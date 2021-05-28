
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d8d984941d415984111e810c23df22b133a61847846db3fe088eae93facf12fb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
