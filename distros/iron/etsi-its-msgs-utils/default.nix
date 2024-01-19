
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-msgs-utils";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_msgs_utils/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "cae5ce6dcd0e8ac7d9ce43030ee30e8ce0ede1b878cb867b7dc4ef151512e286";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages and utility functions for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
