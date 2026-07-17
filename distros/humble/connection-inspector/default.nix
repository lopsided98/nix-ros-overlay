
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, glfw3, libGL, libGLU, rclcpp, rclpy, ros2launch, std-msgs }:
buildRosPackage {
  pname = "ros-humble-connection-inspector";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DynoRobotics/connection_inspector-release/archive/release/humble/connection_inspector/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d69b66d938d0239c715d706355a28059c85fdc1657d45ae6e261721dd9756417";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp glfw3 libGL libGLU rclcpp rclpy ros2launch std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightweight C++ GUI to inspect a ROS 2 node's live connections and diagnose
    broken topic links (QoS incompatibility, type mismatch, dead links).";
    license = with lib.licenses; [ gpl3Only ];
  };
}
