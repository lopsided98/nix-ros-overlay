
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-mrpt-nav-interfaces";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/iron/mrpt_nav_interfaces/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "9899485f6d6a35c8164fa6c11068f827f8cd5421df31c5582cd23a4e554ccd49";
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
