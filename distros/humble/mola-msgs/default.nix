
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-mola-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "c44cf6676a14575bab1fb3567c35aaaab56a8e55d4576e35c6cba446bc3f096c";
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
