
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-galactic-hash-library-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/galactic/hash_library_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "62bda6cb3b853dcb0394424cb1f1da97d08be3e05a5b145f912394393d4c76e9";
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
