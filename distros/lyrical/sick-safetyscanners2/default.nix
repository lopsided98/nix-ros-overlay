
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, robot-state-publisher, rviz2, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-lyrical-sick-safetyscanners2";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2-release/archive/release/lyrical/sick_safetyscanners2/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "4b67831ece2e9b2f71ac542f1e82edc269e1827186a0ef024634374ade16b909";
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
