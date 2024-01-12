
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-actuator-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/actuator_msgs-release/archive/release/humble/actuator_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "3d3a1bd584729b81a104bcac1b8af51056eca1f755c3ccfde98cf7080a7bb62f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS 2 message interface for Actuators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
