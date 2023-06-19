
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-interface";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_interface/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "b9c677f5a4c88c774c2d1d83758427c6bc6524ebddc2a2b8beac8b5a3573ad2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for rosidl typesupport packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
