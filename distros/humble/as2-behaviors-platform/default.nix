
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-platform";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_platform/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "fab6e59c4330a9a00b9f7f46f22406cb9c7d786179947ddd6cdde591f6f99810";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack2 core package which contains launchers for the basic behaviors";
    license = with lib.licenses; [ bsd3 ];
  };
}
