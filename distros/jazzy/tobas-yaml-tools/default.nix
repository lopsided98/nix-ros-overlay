
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-yaml-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_yaml_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "28e51e6adecba4700cbe0bbf32a2772d01a2466f57e715594223d29cbb3b8881";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-math yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "YAML parsing, formatting, and conversion utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
