
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-actuator-msgs";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/actuator_msgs-release/archive/release/jazzy/actuator_msgs/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "006430abfe1ec37c90ae3703c0df21e7f9177e29aeebc1af381073c7f093b18c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 message interface for Actuators.";
    license = with lib.licenses; [ asl20 ];
  };
}
