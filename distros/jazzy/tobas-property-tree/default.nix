
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-path-tools, tobas-property-common, tobas-property-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-tree";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_tree/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "5ca56eecaee70b16fe47bad7437d2b14e6cac9f007cd5aede7c01cd8c167d3ef";
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
