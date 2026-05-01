
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-hri-msgs";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_msgs-release/archive/release/lyrical/hri_msgs/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "1ce8117353a2d5873f9d133fa3ac8a8e17f9c19a1ae38a27a43228537c771f84";
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
