
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, etsi-its-msgs-utils, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-messages";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_messages/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "d07768d3c67af0a520ca365a29d11c10f3550f8be51869dcc75faca551c1b986";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-coding etsi-its-conversion etsi-its-msgs etsi-its-msgs-utils ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS support for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
