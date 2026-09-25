
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-description";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_description/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f204dca78d06c4f01ed59095bb22a59400c146affa0cf74c6cae2389fcc2216e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF models and mesh resources for Tobas hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
