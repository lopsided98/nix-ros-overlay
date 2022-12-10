
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-ign-gazebo-demos, simulation }:
buildRosPackage {
  pname = "ros-rolling-desktop-full";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/desktop_full/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "18c3a7c76ecc8c13c146d113f9dd3c6c7821a69b3d5e0188f601a474e48401f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ desktop perception ros-ign-gazebo-demos simulation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a &quot;batteries included&quot; experience to novice users.'';
    license = with lib.licenses; [ asl20 ];
  };
}
