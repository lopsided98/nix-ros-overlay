
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, diagnostic-updater, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, robot-state-publisher, rviz2, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-kilted-sick-safetyscanners2";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2-release/archive/release/kilted/sick_safetyscanners2/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "6ea3f0a628771014e0e3602afdda08a57ecbfcdb9127bcd89e8d0a1cf5f01d5c";
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
