
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, zstd }:
buildRosPackage {
  pname = "ros-jazzy-zstd-vendor";
  version = "0.26.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/zstd_vendor/0.26.8-1.tar.gz";
    name = "0.26.8-1.tar.gz";
    sha256 = "630676bc3b65e33d4b7b7fc93315ddf45d40b1ba4d3b64415b0712425deb5a32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Zstd compression vendor package, providing a dependency for Zstd.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
