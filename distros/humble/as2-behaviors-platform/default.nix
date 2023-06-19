
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-platform";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_platform/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "14793334f521b3687b538668a088da83154c48aa951ba102d0f86bbe0ed80f02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-behavior as2-core as2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 core package which contains launchers for the basic behaviours'';
    license = with lib.licenses; [ bsd3 ];
  };
}
