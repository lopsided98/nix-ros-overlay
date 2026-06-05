
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-continental-common, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-hw-interfaces";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_hw_interfaces/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "0f89b30fc5f3c940985296e3cec5c028aa600999b492ad465537719d64d069d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-continental-common nebula-core-common nebula-core-hw-interfaces nebula-msgs ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Continental";
    license = with lib.licenses; [ asl20 ];
  };
}
