
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ament-index-cpp";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/kilted/ament_index_cpp/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "94e34555d59bcc6068603c87f3933f70dad3e9967565d139ff778414a82b73ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
