
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-mcap-vendor";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/humble/mcap_vendor/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "73384861e91e5e69fd1c05ecc86168467ae0db3872d28019646ca7319c69d27f";
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
