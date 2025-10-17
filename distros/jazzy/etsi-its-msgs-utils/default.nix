
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, etsi-its-msgs, geographiclib, geometry-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-msgs-utils";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_msgs_utils/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "010cfbb2fc889c43b6ecff2705b63398bced41b9b8a7cfe0b0a2b655595aaa4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
