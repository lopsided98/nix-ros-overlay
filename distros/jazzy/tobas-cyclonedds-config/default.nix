
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cyclonedds-config";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cyclonedds_config/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "935237c144c2e2f871a3ceb0cb2a921df70c1990f31816ad8ae181e803881d87";
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
