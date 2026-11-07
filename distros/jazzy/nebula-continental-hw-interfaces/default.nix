
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-continental-common, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-hw-interfaces";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_hw_interfaces/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "29f3cf91dd38ed793adb02821f83c9de8762aacb5997bd4934f31809343bca77";
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
