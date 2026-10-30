
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-msgs";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_msgs/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "3a869db2ff1ac9ab09811ca8286c7b2263a81ddfe72d2efbe87c5c2651036af7";
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
