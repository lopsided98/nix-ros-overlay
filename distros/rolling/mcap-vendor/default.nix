
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "2e40d4f2deef2a4869b8dd070995141895a5254aa24fb690c12eb834e9a69910";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ zstd-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
