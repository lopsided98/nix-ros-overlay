
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, geometry-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-sbg-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SBG-Systems/sbg_ros2-release/archive/release/foxy/sbg_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ada708074bdf3f3972ea2e8db9e496cffbae3bf3a485ebc0418eb0a8b5926461";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost geometry-msgs rclcpp rosidl-default-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS driver package for communication with the SBG navigation systems.'';
    license = with lib.licenses; [ mit ];
  };
}
