
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math, tobas-std-tools, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-yaml-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_yaml_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "4f77afb9dd7de625b43fc4bb353baa683a1ab7a7b9854be6a2ba849deba2f20d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-math tobas-std-tools yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "YAML parsing, formatting, and conversion utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
