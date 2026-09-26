
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, tobas-path-tools, tobas-property-common, tobas-property-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-tree";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_tree/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "6221e3cb5fd0b6988fee31e27d87fc42e8b6748177b3933c742a7689f268bad5";
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
