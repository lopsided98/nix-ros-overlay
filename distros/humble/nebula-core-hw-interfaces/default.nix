
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common }:
buildRosPackage {
  pname = "ros-humble-nebula-core-hw-interfaces";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_hw_interfaces/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "a3e5a4a8315c89e672e822eb46c17caa9e6a013bb3ffcc98d45057999368e225";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Base";
    license = with lib.licenses; [ asl20 ];
  };
}
