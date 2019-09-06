
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage rec {
  pname = "ros-dashing-connext-cmake-module";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/dashing/connext_cmake_module/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "4afe4bbacd83e7081914c2dd7e87fe17e3d3d64bb5cc0ce69908cf5ef08c9fdf";
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
