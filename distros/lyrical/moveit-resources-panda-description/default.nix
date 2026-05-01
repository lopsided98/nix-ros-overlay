
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-panda-description";
  version = "3.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_panda_description/3.1.1-3.tar.gz";
    name = "3.1.1-3.tar.gz";
    sha256 = "499d9524009e427810a0cb740bddc512c893ecdabd76cff68eeff3a150eb9e31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "panda Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
