
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, robot-state-publisher, rviz2, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-sick-safetyscanners2";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2-release/archive/release/rolling/sick_safetyscanners2/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "9a3c77d1be37aab5f26bcec165fbc26d257573ab1743d385418e488cc6df3918";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ boost diagnostic-updater rclcpp rclcpp-lifecycle robot-state-publisher rviz2 sensor-msgs sick-safetyscanners-base sick-safetyscanners2-interfaces xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Driver for the SICK safetyscanners";
    license = with lib.licenses; [ "ALv2" ];
  };
}
