
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-fri-state-broadcaster";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/fri_state_broadcaster/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fa73fa787a4b5503dfdd63d825d888ac2a36c40227aa59f2dfe95d378d8a2e14";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-driver-interfaces kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster for FRI state";
    license = with lib.licenses; [ asl20 ];
  };
}
