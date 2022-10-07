
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-galactic-mcap-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/galactic/mcap_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3aa4f0cd6824e2ed89f583e584feeb3b457dcde7356051568f3c059bca9f62ef";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
