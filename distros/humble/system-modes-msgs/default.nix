
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-system-modes-msgs";
  version = "0.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/humble/system_modes_msgs/0.9.0-6.tar.gz";
    name = "0.9.0-6.tar.gz";
    sha256 = "a79256d64ed5e8e94936e03207cb854c0896a6c56d8760ce6d51c00a07f11fb1";
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
