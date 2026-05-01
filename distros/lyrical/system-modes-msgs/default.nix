
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-system-modes-msgs";
  version = "0.9.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/lyrical/system_modes_msgs/0.9.0-7.tar.gz";
    name = "0.9.0-7.tar.gz";
    sha256 = "f66a5404a07f92d2717ad16e86a030534b997c0283976d116d0da7eb9487fd2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface package, containing message definitions and service definitions
    for the system modes package.";
    license = with lib.licenses; [ asl20 ];
  };
}
