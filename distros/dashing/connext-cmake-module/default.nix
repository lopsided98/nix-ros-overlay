
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-connext-cmake-module";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/connext_cmake_module/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "1495eed5b5681b0ec8f8aac28d8b1bfbfc0e4572399429032508fd0c5d4c542c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
