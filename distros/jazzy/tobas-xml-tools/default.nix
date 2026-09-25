
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-tobas-xml-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_xml_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "0d24d0d9ed469c0074911ccb1730743348fbea5e7a15b36676efd3e38cb6f96e";
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
