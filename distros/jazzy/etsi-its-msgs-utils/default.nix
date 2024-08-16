
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-msgs-utils";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_msgs_utils/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "0ee6e7fa9a06e1de7b2e3948a22aa4128529cc21021035c8019f1117c17c4c88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
