
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-description";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_description/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "2fc5f5807a626e084e6679fa5c2412f1dfa739e055092f60c4856260897c54d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''panda Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
