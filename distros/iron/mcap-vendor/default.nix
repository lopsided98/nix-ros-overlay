
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-iron-mcap-vendor";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/mcap_vendor/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "2130612d757ccb21133c2fa2aa2f1b4e88780650d1b905254ff8d1e43c9345a0";
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
