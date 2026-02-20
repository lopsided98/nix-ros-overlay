
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-info-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_info_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "c0c5683a8639d565f0f87f7b85337ae269f825f59c0888fe6a60895605d736fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-geometry rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_info_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
