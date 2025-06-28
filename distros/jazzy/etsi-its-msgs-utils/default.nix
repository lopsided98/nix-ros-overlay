
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-msgs-utils";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_msgs_utils/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "48cd5e7af40cc9846c973cb4d1ecba310dc74b5bcc8bba7e1fbf1251319b9ce6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
