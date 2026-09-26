
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-items, tobas-mission-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-msgs-adapter";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_msgs_adapter/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "57e5f39b0d4090b1d26c62656b355a72c7800dcf8f7bdaa9b52b8eefd3416a81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-mission-items tobas-mission-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas mission and mission-item types.";
    license = with lib.licenses; [ asl20 ];
  };
}
