
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, apriltag-ros, geometry-msgs, rclpy, sensor-msgs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-hitch-estimation-apriltag-array";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/li9i/hitch-estimation-apriltag-array-release/archive/release/jazzy/hitch_estimation_apriltag_array/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "ec94bdccf95e90abc675b961d9f78ed5b162785aa540a7119c6ba10b893760b6";
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
