
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-ament-index-cpp";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/crystal/ament_index_cpp/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "ce2cffe1a63b5fa10c1fa8569b30bb1831addeb247a9d69147f5542d4958aeb4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
