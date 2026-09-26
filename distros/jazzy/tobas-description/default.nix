
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-description";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_description/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "63756eb4cc0b86cbf22a1a214a4b2822570fe8347dfd3b52e1388e64e075ae20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF models and mesh resources for Tobas hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
