
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-node";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_node/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7871d297556e82d5a05879a803499e7def0c14dc7be6a6b75a473412ff90f7a0";
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
