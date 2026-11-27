
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cyclonedds-config";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cyclonedds_config/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "cfa98860040f6546d5f91f0eae08be4d6a4a468fbdc28374e8c3a68585fd5039";
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
