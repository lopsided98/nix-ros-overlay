
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common }:
buildRosPackage {
  pname = "ros-jazzy-nebula-core-hw-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_core_hw_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dbba0c40e3d878ae61da03543fd3ce168e66688501e112ea1060cdd69ba9a3b3";
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
