
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-system-modes-msgs";
  version = "0.7.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/galactic/system_modes_msgs/0.7.1-3.tar.gz";
    name = "0.7.1-3.tar.gz";
    sha256 = "aa03c0679e951ea6502e7c39d66356d29f132b51240405e3c48f3c1af9e1e4a9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interface package, containing message definitions and service definitions
    for the system modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
