
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-can-msgs";
  version = "2.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/lyrical/can_msgs/2.0.0-7.tar.gz";
    name = "2.0.0-7.tar.gz";
    sha256 = "1b7e6aa42e88a7b38f027b51e87b04de68e9391375394cac489c293a6f7336ad";
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
