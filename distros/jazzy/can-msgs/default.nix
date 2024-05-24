
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-can-msgs";
  version = "2.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/jazzy/can_msgs/2.0.0-6.tar.gz";
    name = "2.0.0-6.tar.gz";
    sha256 = "301c7ed354c2c4d1587312137a3124cd5e32a9010b4ff73ad5c8b6883082d27c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "CAN related message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
