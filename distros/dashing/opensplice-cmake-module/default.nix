
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice_6_9 }:
buildRosPackage {
  pname = "ros-dashing-opensplice-cmake-module";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/dashing/opensplice_cmake_module/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "ad56d024f3edde1001a074f51f0b627f38b998da844da007847a506b52ca2c13";
  };

  buildType = "ament_cmake";
  buildInputs = [ opensplice_6_9 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
