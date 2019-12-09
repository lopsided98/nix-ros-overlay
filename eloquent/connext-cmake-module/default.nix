
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-connext-cmake-module";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/eloquent/connext_cmake_module/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "649834c5449d73a3b1dac4e29a76879dce00ef00c4f10b85983cc36c73d41779";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find RTI Connext.'';
    license = with lib.licenses; [ asl20 ];
  };
}
