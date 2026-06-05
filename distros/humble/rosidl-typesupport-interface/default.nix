
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-rosidl-typesupport-interface";
  version = "3.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_typesupport_interface/3.1.9-1.tar.gz";
    name = "3.1.9-1.tar.gz";
    sha256 = "9d589de2e53cb704fa4cbd274fbe68e13cf8ee8f1fc5a2b05460030b3a086f11";
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
