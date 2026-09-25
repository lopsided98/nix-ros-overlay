
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-msgs-adapter, tobas-kdl-parser, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tree-server";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tree_server/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "2273ed53df570e730f204ce7a95b6aa83e06a706978287d0f6fe8f055aa660d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-kdl-msgs-adapter tobas-kdl-parser tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that publishes and serves the vehicle KDL tree model.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
