
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware-common";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware_common/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "f6af5c8b3a07ac12d734c8aa8952f491c223fe8ac4b9db68534162dc976fd8c9";
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
