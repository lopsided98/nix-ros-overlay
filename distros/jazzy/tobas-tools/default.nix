
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tools";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tools/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "74dd32a1bad26b599d46c01663d2a4c4176f377262993279b21291893b10e2ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs-adapter tobas-constants tobas-msgs-adapter tobas-path-tools tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Temporary package for miscellaneous drone-related tools whose classification is unclear.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
