
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs, nebula-robosense-common, robosense-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-hw-interfaces";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_hw_interfaces/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "1aace2b803ab0ae6d919e846b7a724deb5bdf0881a9a819033b4f3be348a540b";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-hw-interfaces nebula-msgs nebula-robosense-common robosense-msgs ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula HW Interfaces Robosense";
    license = with lib.licenses; [ asl20 ];
  };
}
