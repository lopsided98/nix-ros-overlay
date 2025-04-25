
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-mapem-ts-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_mapem_ts_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "cde158a8c0e7c5b604697fe4090ca6cc7152141f1d81b722b5263dc018f89f5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS MAPEM (TS)";
    license = with lib.licenses; [ mit ];
  };
}
