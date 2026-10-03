
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-path-tools, tobas-property-common, tobas-property-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-tree";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_tree/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "79e7639da1e58836a85f9b852ce0ae6969745f5171cabcd6125fcee567a01ef6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost tobas-path-tools tobas-property-common tobas-property-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hierarchical property storage and lookup library.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
