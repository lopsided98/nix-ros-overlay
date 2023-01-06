
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-hash-library-vendor";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/rolling/hash_library_vendor/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "c8d3148d35c93aa7848f312e6623267b3cd2801a81dc7b8c6e08b6672a66d965";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto git ];

  meta = {
    description = ''ROS2 vendor package for stbrumme/hash-library'';
    license = with lib.licenses; [ asl20 "Zlib-License" ];
  };
}
