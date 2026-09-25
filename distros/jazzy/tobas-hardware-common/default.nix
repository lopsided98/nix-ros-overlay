
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware-common";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware_common/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "72275e2421405281745615cb981e317131ba0ffe46812e063221162a96c960d9";
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
