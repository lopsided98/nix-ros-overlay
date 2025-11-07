
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-jazzy-ros2-control";
  version = "4.39.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2_control/4.39.1-1.tar.gz";
    name = "4.39.1-1.tar.gz";
    sha256 = "5a6fa4f47efa97077225d444fbd49739f9979bfb521c30d4815ba8ab3bb2b10d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ROS2 control related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
