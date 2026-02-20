
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-extension, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-planning-test-manager, autoware-test-utils, autoware-trajectory, autoware-utils-debug, autoware-utils-rclcpp, autoware-utils-system, autoware-vehicle-info-utils, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-path-generator";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_path_generator/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "db07706ec706fc6191f7d38c7e02e61d7183fb39c7b82bf675640b54bd209b29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-extension autoware-lanelet2-utils autoware-motion-utils autoware-planning-msgs autoware-planning-test-manager autoware-trajectory autoware-utils-debug autoware-utils-rclcpp autoware-utils-system autoware-vehicle-info-utils generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_path_generator package";
    license = with lib.licenses; [ asl20 ];
  };
}
