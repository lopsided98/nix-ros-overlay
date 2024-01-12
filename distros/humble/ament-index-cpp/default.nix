
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-ament-index-cpp";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/humble/ament_index_cpp/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "68019c1d5ef3aae614d9d9c5945a3bffbd2ada16a3b23561b91f4fd2fd4e8d5f";
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
