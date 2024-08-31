
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-depthai-descriptions";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/jazzy/depthai_descriptions/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "559a065922bcee05029272d4df6e22e6e8fec8d4e00037e9e544b302d02b1130";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
