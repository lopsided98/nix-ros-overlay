
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tools";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tools/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "79cb86e330fb5e2c03c37eff3615143bfa93a2f5ad08c8bbe5bfbc13679ad9e6";
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
