
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs-adapter, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "5f505ae08075659cec520168e327e0d1dd523533425aa33d9b4f83b79ec6fdca";
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
