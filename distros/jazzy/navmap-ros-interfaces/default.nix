
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-navmap-ros-interfaces";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_ros_interfaces/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "6525fe20931026bc3ebf513945eed163bce1ae842767b4b378caf65c4207c71c";
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
