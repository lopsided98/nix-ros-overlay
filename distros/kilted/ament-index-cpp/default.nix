
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ament-index-cpp";
  version = "1.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/kilted/ament_index_cpp/1.11.4-1.tar.gz";
    name = "1.11.4-1.tar.gz";
    sha256 = "20728d8f69455d55a943f3e9719e10fd4fab6303d046fac4b11ad79b7aa33789";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "C++ API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
