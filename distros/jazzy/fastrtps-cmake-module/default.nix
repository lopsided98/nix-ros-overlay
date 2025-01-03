
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-fastrtps-cmake-module";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/jazzy/fastrtps_cmake_module/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "cb0ee581583a250d7d778cc48665b82a7b745231d8cc256096bb88ce99b1f05e";
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
