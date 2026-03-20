
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-descriptions-v3";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-v3-release/archive/release/jazzy/depthai_descriptions_v3/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "9dceaaab4a4e7208534cdbeb6fdc1e41e6a7f2c02a8ad972d8182eae27deb88d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions_v3 package";
    license = with lib.licenses; [ mit ];
  };
}
