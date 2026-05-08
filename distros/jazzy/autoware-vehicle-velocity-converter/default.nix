
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-lint-common, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-vehicle-velocity-converter";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_vehicle_velocity_converter/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "4e86bc63433576ceaf39b846d6b284ff5bdb7f50d87dfa4c589618695a06fdc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-vehicle-msgs geometry-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_velocity_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
