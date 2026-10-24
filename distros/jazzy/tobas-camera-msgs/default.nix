
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-msgs";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_msgs/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "d9f259498437da4b97ee972f5fefb8871555cb2e06fcaa669aa31a7a1600408d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 interfaces for camera status, exposure, gimbal control, recording, and image capture.";
    license = with lib.licenses; [ asl20 ];
  };
}
