
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, cv-bridge, python3Packages, rcl-interfaces, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-leo-example-object-detection";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_examples-ros2-release/archive/release/jazzy/leo_example_object_detection/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e204a602da7cfff3c5c96e073bda77ae9d9c83dba43bff7962f9da6c2bf42084";
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
