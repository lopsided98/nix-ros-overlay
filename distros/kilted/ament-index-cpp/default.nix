
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-ament-index-cpp";
  version = "1.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/kilted/ament_index_cpp/1.11.2-1.tar.gz";
    name = "1.11.2-1.tar.gz";
    sha256 = "6ff1defd2b44cdd98f3f0f78ec22143b082321ba3fe4ef7098ae2a5a75cb5b30";
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
