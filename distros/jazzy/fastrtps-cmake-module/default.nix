
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-fastrtps-cmake-module";
  version = "3.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/jazzy/fastrtps_cmake_module/3.6.0-2.tar.gz";
    name = "3.6.0-2.tar.gz";
    sha256 = "e0b78b7a961ba55938dfaea8b7959966870bc0cc86a74d39a46c230d5020926c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provide CMake module to find eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
