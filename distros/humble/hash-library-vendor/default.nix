
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-hash-library-vendor";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/humble/hash_library_vendor/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "6e0a615306326e75f24543d49d3602770e8d3b2e71e9a55e68d33e21e4646c6c";
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
