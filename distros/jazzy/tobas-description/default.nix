
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-description";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_description/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "2383427414a02ee8537b000ae28bcd6ce7293c0b55bf64bde946ea63484f19c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF models and mesh resources for Tobas hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
