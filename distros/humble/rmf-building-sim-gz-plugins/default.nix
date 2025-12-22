
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-fortress, ament-cmake, menge-vendor, qt5, rclcpp, rmf-building-sim-common, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-gz-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_gz_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "b5bc2e5d365679c8e095697aacd59753670c3ebb9985115a9cc1622cb844ee23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_ignition-fortress menge-vendor qt5.qtbase qt5.qtdeclarative rclcpp rmf-building-sim-common rmf-fleet-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugins for building infrastructure simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
