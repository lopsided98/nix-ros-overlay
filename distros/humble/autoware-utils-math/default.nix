
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-math";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_math/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "a941e23a3fc508a702efe753e4b8c084022d0000bba5cbd7da9b549104b766ba";
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
