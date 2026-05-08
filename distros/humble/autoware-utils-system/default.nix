
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-system";
  version = "1.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_system/1.7.2-2.tar.gz";
    name = "1.7.2-2.tar.gz";
    sha256 = "1335b839eb38d941d8397f14e1c42d39d9de0a0f681891ce771ec51ba9961a74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake rclcpp ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_system package";
    license = with lib.licenses; [ asl20 ];
  };
}
