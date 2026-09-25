
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, tobas-ros2-tools, tobas-string-tools, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5ff53d756add469464691ccda233312ca2441780b8d2e227af7639437c619f8a";
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
