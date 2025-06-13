
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "d165fc85198429b265c8e38a3bb024953fa22545b37841022ec049f7728c45a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
