
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, mrpt-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-mola-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2e1693bebfc60d8da41cacb21b617914322298454c8c8065529cc969563b99e2";
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
