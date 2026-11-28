
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-ros-interface";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_ros_interface/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "c32b2ff8b46fef1d6c2f32dd8782cfd3e8aba753f420b3e462486608963ba57b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for communicating with Tobas-compatible cameras.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
