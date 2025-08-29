
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-node";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_node/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e97aa26a6f8f5536d8e099bef18874df71819afc878ffced24a18098af942160";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros autoware-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Autoware Node is an Autoware Core package designed to provide a base class for all nodes in the system.";
    license = with lib.licenses; [ asl20 ];
  };
}
