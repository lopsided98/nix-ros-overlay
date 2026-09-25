
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node, tobas-path-tools, tobas-property-common, tobas-property-msgs, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-server";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_server/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "8d3675dae723d3332f37aab82529da00c65982f1fdf8942550e88d12a16531ff";
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
