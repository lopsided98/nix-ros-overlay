
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-common";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_common/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "af451714e3df62bf511b05b9062c9a66a42ef19bacc64092b2a170211354cd94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common utility functions for Gazebo-classic and Gazebo building plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
