
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opensplice_6_9 }:
buildRosPackage {
  pname = "ros-eloquent-opensplice-cmake-module";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_opensplice-release/archive/release/eloquent/opensplice_cmake_module/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "d6eeb3038ab8ac9e4909a8d6e57c1c0610303d2e2e8816a3dc2fc9797eafad24";
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
