
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-humble-mcap-vendor";
  version = "0.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/mcap_vendor/0.15.6-1.tar.gz";
    name = "0.15.6-1.tar.gz";
    sha256 = "d419954640b193bdd5e5ccbf3bd813fa8efb13efd9ac076840fc8e77a02c97ac";
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
