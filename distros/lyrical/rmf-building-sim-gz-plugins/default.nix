
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, menge-vendor, rclcpp, rmf-door-msgs, rmf-fleet-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-building-sim-gz-plugins";
  version = "2.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/lyrical/rmf_building_sim_gz_plugins/2.6.1-3.tar.gz";
    name = "2.6.1-3.tar.gz";
    sha256 = "23ba3465f6d8d8c5916330073ac1da081b86c6d1809f9790b726106b6e7f56f3";
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
