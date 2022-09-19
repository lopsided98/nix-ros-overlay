
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, rclcpp, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-common";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_common/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "af49450922b7a3d7eedf6cfbaac59556bb41a32c846d5a2f8621b6567df0f817";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ menge-vendor rclcpp rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition building plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
