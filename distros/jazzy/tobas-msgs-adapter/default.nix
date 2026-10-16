
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-msgs-adapter";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_msgs_adapter/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "bf985f1dbfd72022feac3e3d08fa87ecf97b3baf3a09c4b2873b97c0b9a1dc65";
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
