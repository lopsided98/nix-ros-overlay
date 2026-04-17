
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, zstd }:
buildRosPackage {
  pname = "ros-rolling-zstd-cmake-module";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/zstd_cmake_module/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "027c64e3a9ecee6f79d577774ad700deee34db4396432699c4e6da288559777b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ZSTD compression cmake module package";
    license = with lib.licenses; [ asl20 ];
  };
}
