
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-navmap-ros-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/humble/navmap_ros_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "45ac40517ecd2df3eced2eb61de0c275dc973743104a1a21e3f95a0c7a03ad16";
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
