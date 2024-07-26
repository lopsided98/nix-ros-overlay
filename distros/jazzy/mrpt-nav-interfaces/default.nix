
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-nav-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_nav_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d42c54b49cf1946e02eb06a14818b2a703900dc1e0d4b8a83c2e88ee7bce2d63";
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
