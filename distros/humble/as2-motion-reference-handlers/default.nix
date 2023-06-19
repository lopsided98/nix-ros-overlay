
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclpy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-reference-handlers";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_reference_handlers/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "fc56229bde3062aa22d37f1f9660b675cd4410844e9caa4896433f07a4fd4e03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs eigen geometry-msgs rclcpp rclcpp-action rclpy std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Motion handlers to ease the control of the UAVs inside the Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
