
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-fanuc-description";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_fanuc_description/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "b76ab0bf6b1f03f6015cb43a6a684bc59d516e7d3c695a113aaa6ef39a93a8d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
