
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-msgs-utils";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_msgs_utils/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "b1a423ed400ec3ff763e6eb396ae36fe93cb6a6f4da16fa204aa4cb7a631ecab";
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
