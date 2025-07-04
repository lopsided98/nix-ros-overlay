
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-grbl-msgs";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/kilted/grbl_msgs/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "f8afa722180020d4c7f052bc0d71dda80b9707cac3de8bd761ca5c80e4d8e6fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Messages package for GRBL devices";
    license = with lib.licenses; [ mit ];
  };
}
