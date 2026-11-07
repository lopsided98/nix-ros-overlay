
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware-common";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware_common/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "01f488994d47283408a7a587f7552afaf9a2f828f6dbdc5f5706621143e456cc";
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
