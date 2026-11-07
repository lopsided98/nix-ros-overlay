
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-navmap-ros-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_ros_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "a8d7f6a8b83cfce39ee5732cdd5e56be64859963a6d8a5d043c2c32bc4612abd";
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
