
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-msgs-adapter";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_msgs_adapter/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "e1e2a2ca4b121f4bc625b5568641391e3453a6409e50b3192650421b712e9323";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-eigen-msgs-adapter tobas-kdl-msgs-adapter tobas-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for core Tobas vehicle, sensor, and state messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
