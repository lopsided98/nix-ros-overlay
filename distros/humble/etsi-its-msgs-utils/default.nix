
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, etsi-its-msgs, geographiclib, geometry-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-msgs-utils";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_msgs_utils/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "1b5c4d9b70b1e4a51e7dd1475c86d779dd8e17481af46253521037e42b00739b";
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
