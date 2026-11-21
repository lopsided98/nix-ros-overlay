
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common }:
buildRosPackage {
  pname = "ros-humble-nebula-core-hw-interfaces";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_hw_interfaces/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "5a08bf8fa1b0da894194eafc39002a02a23d06f0afa66f5502a36733fd011dba";
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
