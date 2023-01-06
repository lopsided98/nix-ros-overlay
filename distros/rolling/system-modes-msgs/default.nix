
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-system-modes-msgs";
  version = "0.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/rolling/system_modes_msgs/0.9.0-3.tar.gz";
    name = "0.9.0-3.tar.gz";
    sha256 = "4566e1cc4c0230373e60ad564de466dc696a6e5edd4b1e872abf33aaaf289721";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interface package, containing message definitions and service definitions
    for the system modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
