
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-mission-items, tobas-mission-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-msgs-adapter";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_msgs_adapter/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "68977e9bf2afb2ffc3de7bb38f02e1b5ebcb1eb5ef662bf11ec9c4442b48831a";
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
