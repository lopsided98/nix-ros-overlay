
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-node";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_node/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "4b9fcdb6ca81994d38692fa67e99fea632698d0787d0ed70e6918ed9cca893a8";
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
