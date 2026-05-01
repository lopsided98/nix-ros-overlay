
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-autoware-utils-system";
  version = "1.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/lyrical/autoware_utils_system/1.4.2-4.tar.gz";
    name = "1.4.2-4.tar.gz";
    sha256 = "f3abbae1dcd4b768880ac1a3aafbd329a24efd900f97f462d68ef50687bdc911";
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
