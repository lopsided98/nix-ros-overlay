
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs, nebula-robosense-common, robosense-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-hw-interfaces";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_hw_interfaces/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "98202fcfef76b9b488190cabdc9f625d2838d6516753f4d5014adc41116a0df9";
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
