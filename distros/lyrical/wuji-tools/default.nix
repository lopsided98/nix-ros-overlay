
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, wuji-sdk-vendor }:
buildRosPackage {
  pname = "ros-lyrical-wuji-tools";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_tools/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "4b9604decb11578f549905135a0a9659d68c79c5c01f08d13f14f48cdc7e4828";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ wuji-sdk-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Command-line tools for Wuji devices.";
    license = with lib.licenses; [ mit ];
  };
}
