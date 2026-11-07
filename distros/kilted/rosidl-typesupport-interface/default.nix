
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-rosidl-typesupport-interface";
  version = "4.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_typesupport_interface/4.9.9-1.tar.gz";
    name = "4.9.9-1.tar.gz";
    sha256 = "1a199204be51a5700ab93305f17ac7f118c8437e7f3a93daeee3a9fa917523a4";
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
