
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-hri-msgs";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_msgs-release/archive/release/rolling/hri_msgs/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "a8361a5c2980a8e580822390214a49ea48f7e616ce77b69529f0cb7d14b75ee8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Messages, services and action definitions useful for Human-Robot Interaction";
    license = with lib.licenses; [ asl20 ];
  };
}
