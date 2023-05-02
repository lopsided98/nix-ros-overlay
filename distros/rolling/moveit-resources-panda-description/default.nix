
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-description";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_description/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "48151d0faeafabbd5761facef0764404994d2b8c9a6c88d8f5111d17a1dce433";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''panda Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
