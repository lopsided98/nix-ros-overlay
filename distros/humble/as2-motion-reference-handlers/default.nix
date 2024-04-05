
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclpy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-reference-handlers";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_reference_handlers/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "66c16898e5c24221c2e7558c297599c74f9d42c6acde3a52a81e3aed4e1d29e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs eigen geometry-msgs rclcpp rclcpp-action rclpy std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Motion handlers to ease the control of the UAVs inside the Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
