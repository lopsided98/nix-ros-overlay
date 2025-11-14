
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-visualization";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_visualization/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "6b76312e5954663e056beff6a470365155db98aa4413fcf9416d3ad28909a56b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ rclcpp visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_visualization package";
    license = with lib.licenses; [ asl20 ];
  };
}
