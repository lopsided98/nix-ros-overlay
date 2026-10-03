
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cyclonedds-config";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cyclonedds_config/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "a0b312ebbebda3f9b8893335321479c660adbff054cf26767a055797585dea21";
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
