
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-std-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/humble/tuw_std_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "e63eca4e9cc4b2d4e6f9385eb20f600707ab4465d4f101b04775b8c10032aa51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The tuw_std_msgs package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
