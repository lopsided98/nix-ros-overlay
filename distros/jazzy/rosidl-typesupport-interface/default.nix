
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-typesupport-interface";
  version = "4.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_typesupport_interface/4.6.5-1.tar.gz";
    name = "4.6.5-1.tar.gz";
    sha256 = "6ba25868524d7e31569c6a55703c9d7f030822f3ba28e7cb312c937cc8dcf26d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The interface for rosidl typesupport packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
