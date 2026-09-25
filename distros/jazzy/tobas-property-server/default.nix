
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node, tobas-path-tools, tobas-property-common, tobas-property-msgs, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-server";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_server/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "21cbe25e9b88884899cac56afeee6783b390f2434047420e153c9637cacd6a6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-node tobas-path-tools tobas-property-common tobas-property-msgs tobas-property-tree ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that exposes typed properties through services.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
