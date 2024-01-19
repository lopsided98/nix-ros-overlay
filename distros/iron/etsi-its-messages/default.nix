
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, etsi-its-msgs-utils, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-messages";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_messages/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "afcd1715bfc29d83469671f1a0821dbf370988c80fd95818578465069963eee0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-coding etsi-its-conversion etsi-its-msgs etsi-its-msgs-utils ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS support for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
