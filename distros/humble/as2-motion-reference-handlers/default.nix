
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclpy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-reference-handlers";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_reference_handlers/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "bf0e235e3703eb146626a0abcf321a53f070257346e091781821a96f0bc67dd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs eigen geometry-msgs rclcpp rclcpp-action rclpy std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Motion handlers to ease the control of the UAVs inside the Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
