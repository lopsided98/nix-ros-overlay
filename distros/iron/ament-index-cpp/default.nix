
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-ament-index-cpp";
  version = "1.5.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/iron/ament_index_cpp/1.5.2-4.tar.gz";
    name = "1.5.2-4.tar.gz";
    sha256 = "67cf9d74677147a335a622c01cacff22f59957c5bfc40e1e5e8a49a5f201da4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
