
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-hash-library-vendor";
  version = "0.1.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/rolling/hash_library_vendor/0.1.1-7.tar.gz";
    name = "0.1.1-7.tar.gz";
    sha256 = "7279fbec6fa16ff0562bfeba9727384e9bc4635ea37f104418ee241045553e76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto git ];

  meta = {
    description = "ROS2 vendor package for stbrumme/hash-library";
    license = with lib.licenses; [ asl20 "Zlib-License" ];
  };
}
