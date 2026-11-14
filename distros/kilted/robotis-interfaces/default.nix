
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-robotis-interfaces";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotis_interfaces-release/archive/release/kilted/robotis_interfaces/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "68a224df8e33028d6a67c5d8972afaca3108b34e458ae503b82d2a9861fb865d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Custom interfaces for ROBOTIS Physical AI Lineup.";
    license = with lib.licenses; [ asl20 ];
  };
}
