
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-mrpt-nav-interfaces";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_nav_interfaces/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "946e7b585d6e9fb16dae7ba82493da3a38f9bdc44131c237f14478b5d14f32f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs geometry-msgs mrpt-msgs nav-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message, services, and actions, for other mrpt navigation packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
