
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources-panda-description";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources_panda_description/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "bcaafbc47067f1c90cb506815cb3d7b157f85dc47893802860492dd3efc249e8";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''panda Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
