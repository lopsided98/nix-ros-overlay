
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-fanuc-description";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_fanuc_description/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "d8c454355a92ec5558dde938c3b9683a2f40933f25ec1a9cc273a29f2b954e79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
