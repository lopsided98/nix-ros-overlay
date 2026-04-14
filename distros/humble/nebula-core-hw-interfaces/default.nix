
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, nebula-core-common }:
buildRosPackage {
  pname = "ros-humble-nebula-core-hw-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_core_hw_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f38caa924ddb9f7307e7a826ef94b77c0cd6e0b00d368c7a536d111238c94f8b";
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
