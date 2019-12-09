
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, opensplice_6_9, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-opensplice-cmake-module";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/crystal/opensplice_cmake_module/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "3f8dce3df6054604ead696534b9a9d47b7fc8ad6eb5ce2a9d9ca3dc16222cba0";
  };

  buildType = "ament_cmake";
  buildInputs = [ opensplice_6_9 ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find PrismTech OpenSplice.'';
    license = with lib.licenses; [ asl20 ];
  };
}
