
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-xml-tools";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_xml_tools/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "65814e8c9fcdd296b830da4757761fd92e9a0ec3b7015c9095d3f9611a8e0dd0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "XML parsing and manipulation utilities.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
