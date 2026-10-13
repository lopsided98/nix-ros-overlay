
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-path-tools, tobas-property-common, tobas-property-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-tree";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_tree/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "04c8616fa2d8e76bb88e815ded7d57b06d66513a874b9f47beed9d49edd3dddc";
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
