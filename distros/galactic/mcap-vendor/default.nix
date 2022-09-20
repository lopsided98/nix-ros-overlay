
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-galactic-mcap-vendor";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/galactic/mcap_vendor/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "bc382c1091d08fb53eb3a6900c0db01b44345c3821ecc8b51f18ad07b5f7dadf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
