
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-tools";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/kilted/ecl_tools/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "43333405e70ff8a570bf23b677ae9f141c4fdaad6c84824fa3e9b51a8b983364";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools and utilities for ecl development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
