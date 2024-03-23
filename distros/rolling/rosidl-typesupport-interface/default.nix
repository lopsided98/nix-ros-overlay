
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-interface";
  version = "4.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_interface/4.5.1-2.tar.gz";
    name = "4.5.1-2.tar.gz";
    sha256 = "765d5a05de3e8d01a76091817d891855874b99929a383081439eeecbc36bedb1";
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
