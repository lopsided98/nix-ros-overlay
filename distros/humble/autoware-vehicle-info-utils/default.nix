
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-info-utils";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_info_utils/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "1f9712f19a299875bfa5cc50bb7990523ad9bcab945354647315e9ad1a6cb556";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_info_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
