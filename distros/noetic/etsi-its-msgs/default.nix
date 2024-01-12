
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-msgs, etsi-its-denm-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "68c1a3cf11322b33e08cca7e7258d2e804f2841dc13a7b4ef6d084976114acc5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-denm-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
