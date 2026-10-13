
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-string-tools";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_string_tools/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "4a6c457f7287e85f09e02f7ac014318ea9891abaf303b1fb5bf8b25b0a53169e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "String conversion, parsing, formatting, and stream utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
