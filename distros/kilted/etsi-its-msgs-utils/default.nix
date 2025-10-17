
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, etsi-its-msgs, geographiclib, geometry-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-msgs-utils";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_msgs_utils/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "ae52a3ee26f635ac205bb1e2a349beb3d782843e395786caf3269f728d94676b";
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
