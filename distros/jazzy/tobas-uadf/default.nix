
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-urdf, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-uadf";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_uadf/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "4b1363f93fb2681ed83a6f916451515c1a403628e6cdd2b9b11d1b473a78aa1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-urdf tobas-xml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parser, data model, and exporter for Tobas UADF airframe descriptions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
