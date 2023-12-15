
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-python, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclpy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-reference-handlers";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_reference_handlers/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "69d1cdad61617e00051df0f4a023e2b8579088e42fca9f9e77980a4fd2647582";
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
