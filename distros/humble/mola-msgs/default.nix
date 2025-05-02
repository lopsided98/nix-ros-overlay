
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-mola-msgs";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_msgs/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "c78d3e4a1e20c3a55c1c0fe966621042bcd050b15c821e2c999646c2cd3a4fc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs mrpt-msgs nav-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS message, services, and actions used in other MOLA packages.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
