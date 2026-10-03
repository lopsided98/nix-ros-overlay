
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, tobas-ros2-tools, tobas-string-tools, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f8a5914d3b04c5918fbbefb466dedc18c3c26ee093c153dd7487711296becb80";
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
