
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node, tobas-path-tools, tobas-property-common, tobas-property-msgs, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-server";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_server/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "638cb6a08a0e70597df699668bcd9fe8c0077b0c9cbd7f1b398f5ad9c97f8317";
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
