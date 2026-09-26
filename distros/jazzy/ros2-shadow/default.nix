
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, diagnostic-msgs, geometry-msgs, nav-msgs, python3Packages, rclpy, rosidl-runtime-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-shadow";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/catplotlib/ros2_shadow-release/archive/release/jazzy/ros2_shadow/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d4711f0b0869a236a0730f18a428f4ad3d3b6d64d0571eb781054aa20fb15726";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs nav-msgs python3Packages.numpy python3Packages.pyyaml rclpy rosidl-runtime-py trajectory-msgs ];

  meta = {
    description = "Run a candidate node beside a production node on live inputs, compare their outputs, and report behavioural divergence without letting the candidate reach hardware.";
    license = with lib.licenses; [ mit ];
  };
}
