
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, menge-vendor, rclcpp, rmf-door-msgs, rmf-fleet-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-sim-gz-plugins";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_building_sim_gz_plugins/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "c39ce8bda5ea75a5927e0ddcce72c5c85cac40e6bf567e2a6bb1fc9f68dc89c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-gui-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-sim-vendor gz-transport-vendor menge-vendor rclcpp rmf-door-msgs rmf-fleet-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugins for building infrastructure simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
