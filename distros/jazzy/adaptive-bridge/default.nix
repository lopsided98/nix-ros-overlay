
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, python3Packages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-adaptive-bridge";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/KaushalrajPuwar/adaptive_bridge-release/archive/release/jazzy/adaptive_bridge/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "2cdbb0e899db7dffba36b4dc51f16bd4a44563f85ec37151be36f4d2600b3ce3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyyaml rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Adaptive Bridge is a ROS 2 middleware-level proxy that mitigates the
        slow-subscriber backpressure coupling problem by decoupling critical
        and non-critical subscriber paths. It prevents a degraded subscriber
        (e.g. a remote visualisation tool over WiFi) from degrading the
        publisher or affecting safety-critical consumers.";
    license = with lib.licenses; [ asl20 ];
  };
}
