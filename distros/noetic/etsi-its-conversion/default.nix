
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-conversion, etsi-its-denm-conversion, message-runtime, nodelet, ros-environment, roscpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-conversion";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_conversion/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "c5b70ade87bbefea28e489b9d2d2b78e8404e4fb007ccac1644ab6802bc76e29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-denm-conversion message-runtime nodelet ros-environment roscpp std-msgs udp-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Converts ROS messages to and from ASN.1-encoded ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
