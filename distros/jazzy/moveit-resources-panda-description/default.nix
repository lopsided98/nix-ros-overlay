
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-panda-description";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/moveit_resources_panda_description/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "db4ab79c6976968270facc1f719f073e75929d7907b7cac51cb9a42bc68d856a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "panda Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
