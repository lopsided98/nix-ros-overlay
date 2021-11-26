
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-hash-library-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/tier4/hash_library_vendor-release/archive/release/galactic/hash_library_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "571f885109fc8700a37b96607f96d8e8e70506a48acec360c144d4a9f996e886";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''ROS2 vendor package for stbrumme/hash-library'';
    license = with lib.licenses; [ asl20 "Zlib License" ];
  };
}
