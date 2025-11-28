
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-navmap-ros-interfaces";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_ros_interfaces/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ad5c08533aee0015da008ed6c543cce280ad14a2371b1b2cd39fe989afc9b888";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 interfaces for NavMap (messages for visualization and layers)";
    license = with lib.licenses; [ asl20 ];
  };
}
