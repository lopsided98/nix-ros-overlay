
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, example-interfaces, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, rcl-interfaces, rclcpp, rclcpp-action, ros2-medkit-fault-manager, ros2-medkit-gateway, ros2-medkit-msgs, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-integration-tests";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_integration_tests/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "24efff5f701973c12438b955a3aefe7238562a867c486c9cb7efd8117c3c0c1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-index-python launch-ros launch-testing launch-testing-ament-cmake python3Packages.requests ros2-medkit-fault-manager ros2-medkit-gateway ];
  propagatedBuildInputs = [ example-interfaces rcl-interfaces rclcpp rclcpp-action ros2-medkit-msgs sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Integration tests and demo nodes for ros2_medkit";
    license = with lib.licenses; [ asl20 ];
  };
}
