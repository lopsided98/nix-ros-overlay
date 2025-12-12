
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-python, ament-cmake-xmllint, ament-lint-auto, aruco-opencv, aruco-opencv-msgs, generate-parameter-library, geometry-msgs, nav-msgs, rclpy, tf-transformations }:
buildRosPackage {
  pname = "ros-jazzy-leo-example-follow-aruco-marker";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_examples-ros2-release/archive/release/jazzy/leo_example_follow_aruco_marker/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d269d229357afe9fb8b406fa46c59f3ca20fd5cb9900ac243ab9c04c2c3088ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ aruco-opencv aruco-opencv-msgs generate-parameter-library geometry-msgs nav-msgs rclpy tf-transformations ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Follow Aruco Marker Example for Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
