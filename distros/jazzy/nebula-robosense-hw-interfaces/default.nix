
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs, nebula-robosense-common, robosense-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-hw-interfaces";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_hw_interfaces/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "73e5d655e4a3ea13ba410b6661bc66ca114af8ffd91cac225d83502bedd5fa63";
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
