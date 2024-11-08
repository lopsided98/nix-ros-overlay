
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, etsi-its-msgs-utils, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-messages";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_messages/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "950f66f2e3412689e1bb1fed81fe913820c3f27c67c1d79fe254c2814e9a5419";
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
