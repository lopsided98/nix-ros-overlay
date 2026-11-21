
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-common";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_common/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "669346ef0885e40cb99a6a20730b747c5949015b00ab25968e24f92b9a1d6d56";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Robosense Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}
