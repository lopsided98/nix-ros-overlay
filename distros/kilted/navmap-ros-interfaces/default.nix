
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-navmap-ros-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_ros_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "9712555e342d7136605f505dd6ecd3bb94dd5daa22aa45ee00300e7373a35334";
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
