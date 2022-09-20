
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, ros2-control-test-assets, ros2controlcli }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "a07f274f21a59b7bcf2376f2b0f2296c00242734b4bb384a8aa6f7654e2c59e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface ros2-control-test-assets ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
