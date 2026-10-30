
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, rclpy, rosidl-default-generators, rosidl-default-runtime, std-msgs, tf-transformations, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-dynamic-tf-publisher";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/dynamic_tf_publisher/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "815472a863571893c3f98506bc2fa76ec8dd65ce69325e1c98253cd735a07f46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs jsk-ros1-ros2-compat rclpy rosidl-default-runtime std-msgs tf-transformations tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "dynamically set the tf trensformation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
