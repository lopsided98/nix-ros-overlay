
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-iron-ros2-control";
  version = "3.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/ros2_control/3.29.0-1.tar.gz";
    name = "3.29.0-1.tar.gz";
    sha256 = "3133ec3dc5f26b4fc956927b34cf47e3e399c3cc3105bc17e47995451c5d305d";
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
