
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, autoware-utils-rclcpp, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-info-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_info_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "a85bd8fbd89f7abb3d52ed1aae27d7a23e041d9305de391a9d053843f3fb9dd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-geometry autoware-utils-rclcpp rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_info_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
