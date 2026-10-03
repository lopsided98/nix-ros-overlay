
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-description";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_description/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "01016effbe88b2674be01ce4f0742de408a07ef27d2be401b4857818f91e36f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF models and mesh resources for Tobas hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
