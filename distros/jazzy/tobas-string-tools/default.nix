
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-string-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_string_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "b618d070d46ed6bc747efa5dccd833086c8c92b60c6db1eb80a5e2ccb583ed3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "String conversion, parsing, formatting, and stream utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
