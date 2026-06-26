
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, apriltag-msgs, apriltag-ros, geometry-msgs, python3Packages, rclpy, sensor-msgs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-hitch-estimation-apriltag-array";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/li9i/hitch-estimation-apriltag-array-release/archive/release/lyrical/hitch_estimation_apriltag_array/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "2879f99ef93aca8fd5733646c7390ad28d1aeed0f8fcd23b8f5ce6e5c475e801";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ apriltag-msgs apriltag-ros geometry-msgs python3Packages.numpy rclpy sensor-msgs tf-transformations tf2-ros ];

  meta = {
    description = "A package that estimates the hitch joint state between a robot and a
    trailer by optical recognition of an array of April tags mounted at the
    front of the trailer by the rear camera of the robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
