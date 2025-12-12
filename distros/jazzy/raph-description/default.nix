
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-raph-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "bad3ff95f1790d5aa04ff11e088399d7566075de1c1d21276d09f2cd14442b89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF Description package for Raph Rover";
    license = with lib.licenses; [ mit ];
  };
}
