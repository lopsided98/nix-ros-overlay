
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, ros-environment, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-descriptions";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_descriptions/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "0a81bbfef9df2b08bc54d661f99e1644db8800e6405591cfbb74865d88de483a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
