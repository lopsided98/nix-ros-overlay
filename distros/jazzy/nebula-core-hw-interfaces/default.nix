
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common }:
buildRosPackage {
  pname = "ros-jazzy-nebula-core-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_core_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "1277167b65721e88d05916c18fd01045e5bfcb9b4051039a8a13b92c5d18495b";
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
