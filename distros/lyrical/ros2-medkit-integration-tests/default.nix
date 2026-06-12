
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, diagnostic-msgs, example-interfaces, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, rcl-interfaces, rclcpp, rclcpp-action, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-gateway, ros2-medkit-graph-provider, ros2-medkit-linux-introspection, ros2-medkit-msgs, ros2-medkit-param-beacon, ros2-medkit-topic-beacon, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-integration-tests";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_integration_tests/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "8327dc8aa0f7ee84fbd684b60a3d507988acd525695e925172e8334415284d9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros2-medkit-cmake ];
  checkInputs = [ ament-index-python launch-ros launch-testing launch-testing-ament-cmake python3Packages.jsonschema python3Packages.requests ros2-medkit-fault-manager ros2-medkit-gateway ros2-medkit-graph-provider ros2-medkit-linux-introspection ros2-medkit-param-beacon ros2-medkit-topic-beacon ];
  propagatedBuildInputs = [ diagnostic-msgs example-interfaces rcl-interfaces rclcpp rclcpp-action ros2-medkit-msgs sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ros2-medkit-cmake ];

  meta = {
    description = "Integration tests and demo nodes for ros2_medkit";
    license = with lib.licenses; [ asl20 ];
  };
}
