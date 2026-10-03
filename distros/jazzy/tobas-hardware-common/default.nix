
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "6e46d0a9a4f63db16918eb329255eaaebf1c7ea5a6725b0805a71e1d54915b69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared ROS 2 base classes for Tobas sensor driver nodes.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
