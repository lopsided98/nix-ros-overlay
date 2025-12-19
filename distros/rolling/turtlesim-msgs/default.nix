
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-turtlesim-msgs";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim_msgs/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "7534007a41dddb1b4e6499b91c843171d5656041cc8907c24f21cc0a5e7a3962";
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
