
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-coding, etsi-its-conversion, etsi-its-msgs, etsi-its-msgs-utils, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-messages";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_messages/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ece14e097cf9f2cb3bc1e95173f976ea77e3f0f900854a947f805af2d512f2c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-coding etsi-its-conversion etsi-its-msgs etsi-its-msgs-utils ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS support for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
