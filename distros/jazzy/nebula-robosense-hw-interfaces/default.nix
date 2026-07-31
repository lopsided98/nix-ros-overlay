
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-msgs, nebula-robosense-common, robosense-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-hw-interfaces";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_hw_interfaces/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b30008540617aa8ebbd3a79bdfd8ba96552dbd0adef8858aa337231dec81643c";
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
