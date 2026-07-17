
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, cv-bridge, generate-parameter-library, geometry-msgs, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-leo-example-line-follower";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_examples-ros2-release/archive/release/jazzy/leo_example_line_follower/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "9b1dbc828ca79bb72c5404bd8153783c8f2aab3afc50fad13af008710eb398d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ cv-bridge generate-parameter-library geometry-msgs python3Packages.numpy python3Packages.opencv4 rclpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A line track follower example for Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
