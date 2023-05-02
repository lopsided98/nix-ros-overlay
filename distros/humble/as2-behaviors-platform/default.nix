
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-behavior, as2-core, as2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-platform";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_platform/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "546c60e9eea0b7ffb4c61e53f0cbf9fb2aa80fd821190dff6e1ab742e1dc9011";
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
