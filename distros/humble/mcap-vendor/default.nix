
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-mcap-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/humble/mcap_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2904067dfd1a26c3ba727a9e0c33423b0612bd60ee3a40cbd4d14f0357ea5c83";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
