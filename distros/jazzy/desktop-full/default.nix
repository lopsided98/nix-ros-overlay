
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-gz-sim-demos, simulation }:
buildRosPackage {
  pname = "ros-jazzy-desktop-full";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/jazzy/desktop_full/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "db67b2a399e91c61230a446d94f26aa6989e6b26a26bae273ae89ecf3daa51e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ desktop perception ros-gz-sim-demos simulation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a 'batteries included' experience to novice users.";
    license = with lib.licenses; [ asl20 ];
  };
}
