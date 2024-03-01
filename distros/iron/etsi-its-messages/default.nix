
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, etsi-its-msgs-utils, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-messages";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_messages/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f8188e1850c6db1210e766b63db9b6107ce900a4b990d1de154e42fb2b1974f8";
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
