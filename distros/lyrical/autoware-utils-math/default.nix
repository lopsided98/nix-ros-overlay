
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-autoware-utils-math";
  version = "1.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/lyrical/autoware_utils_math/1.4.2-4.tar.gz";
    name = "1.4.2-4.tar.gz";
    sha256 = "098c43b8b2cb32cfd36572b8553a20b6257f9beaa4fa633f0d7d6d12b9c8b9f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_math package";
    license = with lib.licenses; [ asl20 ];
  };
}
