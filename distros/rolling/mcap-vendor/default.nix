
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, lz4-cmake-module, zstd-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-mcap-vendor";
  version = "0.34.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/mcap_vendor/0.34.0-1.tar.gz";
    name = "0.34.0-1.tar.gz";
    sha256 = "17b2c53dcd2505475522d68f669a2455e77b9dc030ba8c7243dad7a104f9d12e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ lz4-cmake-module zstd-cmake-module ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "mcap vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
