
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-fanuc-description";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources_fanuc_description/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "2761a8e506f0c80389bebe74e035699496d012f234fd9a7b5577b3e057e8cd49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Fanuc Resources used for MoveIt testing";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
