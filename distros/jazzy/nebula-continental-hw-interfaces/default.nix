
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-continental-common, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "100b456c0e6a048f2c47224dc52868d8f55c799e621203c52fced821736c84a3";
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
