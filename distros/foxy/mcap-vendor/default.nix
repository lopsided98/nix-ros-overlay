
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-foxy-mcap-vendor";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/foxy/mcap_vendor/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "c4f93c8e9fc3f0f38a8c39cb9b6bfdfe23f71ab935bccd73a896662892bf1720";
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
