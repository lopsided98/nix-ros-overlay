
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-string-tools, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cyclonedds-config";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cyclonedds_config/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "0a20b55dcdb9487858d7cb42011c8bcde17c8983a8cdb98c9d91f2728d916cbf";
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
