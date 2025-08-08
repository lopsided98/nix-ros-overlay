
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, eigen, geometry-msgs, rclcpp, rclcpp-action, rclpy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-motion-reference-handlers";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_motion_reference_handlers/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "da7ebf85f565e0c3b4f9985ca45e77ea8127312455e0019b43e8ce1adfbda25c";
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
