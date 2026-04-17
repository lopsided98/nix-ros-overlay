
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, lz4 }:
buildRosPackage {
  pname = "ros-rolling-lz4-cmake-module";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/lz4_cmake_module/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "6f6b9eaa38b53d771af4aa3db258155344a04c6042e48a8284916b46fb847692";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lz4 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "LZ4 compression cmake module package";
    license = with lib.licenses; [ asl20 ];
  };
}
