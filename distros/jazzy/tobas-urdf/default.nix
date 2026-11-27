
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, tobas-ros2-tools, tobas-string-tools, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "5ef0df6e6b0f9b69cddf4c258eac5700fe1bd3cab6e2c9e63876325f7a90e7b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp tobas-ros2-tools tobas-string-tools urdf urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF parsing, export, and model utility library for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
