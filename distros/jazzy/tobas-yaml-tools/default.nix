
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-yaml-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_yaml_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "d212ec366371cd26aeb39eeb08c34931fb57b2c9543f1ef5c74110cf7fb690dd";
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
