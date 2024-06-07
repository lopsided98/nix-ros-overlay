
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-msgs, etsi-its-denm-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "b78013a808a10a4e982de720d97f9e846d26c26b2a50c8973f64e600f253e96b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-denm-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
