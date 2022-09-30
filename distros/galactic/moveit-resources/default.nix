
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "4b66a6a4a10e3cdb9b11d64233aea9e914678b3c44ccc038644abff25b70cf51";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
