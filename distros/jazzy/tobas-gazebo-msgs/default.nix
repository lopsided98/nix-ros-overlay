
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-msgs";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_msgs/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "3a2293ece9c6e1ab565e7941bf5edb4b8578018f4a69ed0b5c8d2cd1572a0b42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 message and service definitions for Tobas Gazebo integration.";
    license = with lib.licenses; [ asl20 ];
  };
}
