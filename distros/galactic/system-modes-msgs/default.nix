
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-system-modes-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/galactic/system_modes_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "219aa913637105060717a8be60115acb01422ddf310ef1cdaa84038e99f12320";
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
