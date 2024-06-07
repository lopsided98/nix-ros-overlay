
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-mrpt-nav-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/iron/mrpt_nav_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c162b38832e0dca107b9a0baef96f4ee5856ced0162e618a19edf03c8b11d000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ mrpt-msgs nav-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message, services, and actions, for other mrpt navigation packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
