
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-lint-common, autoware-utils-geometry, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-velocity-converter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_velocity_converter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "b80818f094a597d21fae90853e97c10c323e1f0f1b64b62fccccd0a467518540";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-utils-geometry autoware-vehicle-msgs geometry-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_velocity_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
