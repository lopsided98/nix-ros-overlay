
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-velocity-converter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_velocity_converter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "9e8ecd4e8514c8f96a75ddb78c7463266fc0ad44a317595f3ef4f09bb04a335f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-vehicle-msgs geometry-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_velocity_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
