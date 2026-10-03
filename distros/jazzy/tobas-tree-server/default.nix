
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-msgs-adapter, tobas-kdl-parser, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-tree-server";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_tree_server/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "ca1dac07975897900695a355509fd97ef9fc04ac3837e3e432d22d002a63cadc";
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
