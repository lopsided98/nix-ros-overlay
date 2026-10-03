
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math, tobas-std-tools, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-yaml-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_yaml_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "d103e870809b37f11cc9c42e36f54b82cc840d7be2f54f0e46fc8185fe960a84";
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
