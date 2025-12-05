
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, apriltag-ros, geometry-msgs, rclpy, sensor-msgs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-hitch-estimation-apriltag-array";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/li9i/hitch-estimation-apriltag-array-release/archive/release/humble/hitch_estimation_apriltag_array/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "1034fcca32617a6ce263302cf41cd20d76e3de0419a636a3ad72e5cb5557e5ad";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-ros geometry-msgs rclpy sensor-msgs tf-transformations tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package that estimates the hitch joint state between a robot and a
    trailer by optical recognition of an array of April tags mounted at the
    front of the trailer by the rear camera of the robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
