
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-system";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_system/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "cac209f4c12009108dcfaa98118f24131f995f771fb3b2b8bbab3cf7506c49ee";
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
