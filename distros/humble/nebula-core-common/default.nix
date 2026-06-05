
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, nlohmann_json, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-core-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c7009be305cd7633e9ccb9060e8b117a5c3a5675ef63a5ccfb8ed1f4ad19bc5e";
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
