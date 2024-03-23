
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-actuator-msgs";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/actuator_msgs-release/archive/release/rolling/actuator_msgs/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "69b745674db32e24ab628ea804c55385024306dd50dfbaf784f2bf2341b698f8";
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
