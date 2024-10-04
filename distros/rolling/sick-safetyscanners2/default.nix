
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, robot-state-publisher, rviz2, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-sick-safetyscanners2";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2-release/archive/release/rolling/sick_safetyscanners2/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8a9c87943483ee989edaacac20f68281a021d3fe96d0665dbc75a9958d6ec7f6";
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
