
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, zstd-vendor }:
buildRosPackage {
  pname = "ros-foxy-mcap-vendor";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_storage_mcap-release/archive/release/foxy/mcap_vendor/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "816544fe810a686159575d1a1a511bbac3cadb1afa9f51bf9968f084223181f9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ zstd-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''mcap vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
