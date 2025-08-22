
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-planning-test-manager, autoware-test-utils, autoware-trajectory, autoware-utils-debug, autoware-utils-system, autoware-vehicle-info-utils, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-path-generator";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_path_generator/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "14327ed8759ce8c251c564004e0ef78e57457895a51085a6a10f38522f1fa437";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-extension autoware-motion-utils autoware-planning-msgs autoware-planning-test-manager autoware-trajectory autoware-utils-debug autoware-utils-system autoware-vehicle-info-utils generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_path_generator package";
    license = with lib.licenses; [ asl20 ];
  };
}
