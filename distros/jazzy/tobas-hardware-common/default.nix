
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware-common";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware_common/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "079a07448390e5a3f2ffd74e9cac51f113e61300c06711eb791c9b2906e0786b";
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
