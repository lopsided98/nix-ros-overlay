
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-airskin-msgs";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/rolling/tuw_airskin_msgs/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "224a8b5c7cf941ea09baec97601fb19f1b13da9f709261aea187b3eb4dde3bd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The tuw_airskin_msgs package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}