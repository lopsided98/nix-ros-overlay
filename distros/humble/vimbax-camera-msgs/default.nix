
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-vimbax-camera-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vimbax_camera_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "e07fd25446a6fbfca8528c10b92fd3d9f49de71a5dc957fa6806f4a9c4707bc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Topic and Service definitions used by the vimbax_camera_node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
