
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, nlohmann_json, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-core-common";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_common/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "fb7083a2f8cdeb33bc62cfe6d26a8b521f2e2f17e246df5265b25b2558540016";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost nlohmann_json ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Base Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}
