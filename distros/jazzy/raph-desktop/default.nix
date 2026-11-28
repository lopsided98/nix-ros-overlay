
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raph, raph-viz }:
buildRosPackage {
  pname = "ros-jazzy-raph-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_desktop-release/archive/release/jazzy/raph_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7b6e58790bb0b2fcf3a3e2d6e58749392d30dbe15cf7fb9bb14375387024a826";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raph raph-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for Raph Rover for desktop";
    license = with lib.licenses; [ mit ];
  };
}
