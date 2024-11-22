
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cam-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-conversion";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_conversion/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "515e7dfb5d49b368bdf70a93d8ef6fe3abc8bf6d325396aa2e97276a44c8e6e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs";
    license = with lib.licenses; [ mit ];
  };
}
