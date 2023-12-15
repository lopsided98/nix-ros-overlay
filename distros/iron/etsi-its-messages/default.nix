
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-messages";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_messages/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "fa2ec91d8a07a206ef0fe57cbbb2d7e3ea6c3c57eebe143f0df2a9edb59cc690";
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
