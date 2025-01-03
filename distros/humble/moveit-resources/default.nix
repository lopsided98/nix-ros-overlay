
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-humble-moveit-resources";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "50e5c3fe6573e4ab32c1c9f8b18a45d96069a90ad1db12208bb4b2c3d43c1f63";
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
