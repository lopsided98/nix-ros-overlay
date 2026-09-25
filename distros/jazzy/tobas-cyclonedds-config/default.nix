
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cyclonedds-config";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cyclonedds_config/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "506bc3c501260bb5d2851b617cfe72db3cb9c6588c80990af3cf20b54da4851d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-string-tools tobas-xml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Library for reading, editing, and exporting Cyclone DDS configuration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
