
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-system";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_system/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "515e28bee8ceffa48252315094a117f07991b4bd481df3fe4f91955f1cd7408c";
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
