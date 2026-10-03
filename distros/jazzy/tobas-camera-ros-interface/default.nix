
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-camera-ros-interface";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_camera_ros_interface/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "dacf4574dc714dba0db379e9d586a083819e5a1074d131d6722687d36523ab63";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for communicating with Tobas-compatible cameras.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
