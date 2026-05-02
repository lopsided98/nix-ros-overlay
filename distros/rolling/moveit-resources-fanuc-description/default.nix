
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-fanuc-description";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_fanuc_description/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "538793558f619a47432ffb547279780505e2a5ed48e8fc45c34496b283ad0e13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Fanuc Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
