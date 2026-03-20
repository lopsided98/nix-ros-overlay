
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-diagnostic-bridge";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_diagnostic_bridge/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "5508619829ea9b6117976f402e7a59d6800486d4a9c04012647ef2cee58af718";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp ros2-medkit-fault-reporter ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge node converting ROS2 /diagnostics to FaultManager faults";
    license = with lib.licenses; [ asl20 ];
  };
}
