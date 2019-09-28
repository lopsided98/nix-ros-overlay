
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake-gtest, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-ament-index-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/dashing/ament_index_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "cb86356457dd4c54e478a1054d13f7158b3badc8fba75102f2935a5b18931b16";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
