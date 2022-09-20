
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-can-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/galactic/can_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "4910a238513f5185244daa1d6af679334020fbf388360e8b2e0e0c85d03c8129";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''CAN related message types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
