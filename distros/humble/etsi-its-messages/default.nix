
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-messages";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_messages/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "6769238af374192bbb1b8b1bb324acf3b1e2e760a0c480a927db6a7a0bf4a87d";
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
