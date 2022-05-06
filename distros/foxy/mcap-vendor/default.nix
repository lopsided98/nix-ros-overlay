
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-mcap-vendor";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/foxy/mcap_vendor/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "6ed8100bdc3ad75c0c89c2b3cc1656990d6ff38c0a7f0a736df961a3af9163cb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
