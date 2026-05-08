
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-planning-test-manager, autoware-test-utils, autoware-trajectory, autoware-utils-debug, autoware-utils-rclcpp, autoware-utils-system, autoware-vehicle-info-utils, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-path-generator";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_path_generator/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "50c91373c3d118558f7f83778bf4fa2cd8521453445dec7f6f3c50fdb45abb22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-utils autoware-motion-utils autoware-planning-msgs autoware-planning-test-manager autoware-trajectory autoware-utils-debug autoware-utils-rclcpp autoware-utils-system autoware-vehicle-info-utils generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_path_generator package";
    license = with lib.licenses; [ asl20 ];
  };
}
