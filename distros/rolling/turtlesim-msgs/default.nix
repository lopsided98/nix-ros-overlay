
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-turtlesim-msgs";
  version = "1.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim_msgs/1.11.3-1.tar.gz";
    name = "1.11.3-1.tar.gz";
    sha256 = "7cd035d93c6ca8ec745fbdee9b0fe54c5da48c4aa85302947f009de11cb642d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "turtlesim messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
