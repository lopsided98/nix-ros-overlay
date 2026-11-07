
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math, tobas-std-tools, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-yaml-tools";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_yaml_tools/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "7e02a693b95416f0d8d16c976c9e58e24d391f0f410c17c3bcb42270f20734bc";
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
