
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-rosidl-typesupport-interface";
  version = "3.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_typesupport_interface/3.1.4-1.tar.gz";
    name = "3.1.4-1.tar.gz";
    sha256 = "c33b7040c0373090b51b4e96f31033999c1b22e6d57d8d34c31dc63610003511";
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
