
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai-common";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai_common/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "2c123bfaccef50755e2c1c77e7d784a5d260688e90e0fc7fbe12e71ecc059838";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Hesai Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}
