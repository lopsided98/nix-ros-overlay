
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-connext-cmake-module";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_connext-release/archive/release/foxy/connext_cmake_module/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5d21dc88136532ebea26f10a0ac982838a0d675169c87e3cb3f333fbcdb1111d";
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
