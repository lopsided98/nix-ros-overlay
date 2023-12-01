
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-messages";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_messages/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "28a6fdf9973d4d6d8ca5225895de094c22dedff2d92036daecba935e3b0f1e3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-coding etsi-its-conversion etsi-its-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS support for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
