
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-vehicle-velocity-converter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_vehicle_velocity_converter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "38aa15a0ab84934cee3e86f8804db351b62053c9171ec1c965298ceb70b72119";
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
