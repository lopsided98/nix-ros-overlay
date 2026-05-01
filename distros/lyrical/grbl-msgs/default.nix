
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-grbl-msgs";
  version = "0.0.2-r10";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/lyrical/grbl_msgs/0.0.2-10.tar.gz";
    name = "0.0.2-10.tar.gz";
    sha256 = "5273a16c91b6232ec3093adca404db491cb3c6d327148ef8655a6d31d689e321";
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
