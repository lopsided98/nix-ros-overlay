
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, cv-bridge, python3Packages, rcl-interfaces, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-leo-example-object-detection";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_examples-ros2-release/archive/release/jazzy/leo_example_object_detection/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3aea735d42e5f4b47919bc2fb9281ac27d703545dbf24531f911553d3a40e916";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ cv-bridge python3Packages.numpy python3Packages.opencv4 python3Packages.pyyaml rcl-interfaces rclpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Object Detection Example for Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
