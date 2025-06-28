
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-mola-msgs";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_msgs/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "da75971fddd1e5d04ede00050b8c2203358be26207c384f6c704f70fe8b9d6e8";
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
