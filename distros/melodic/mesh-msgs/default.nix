
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "af4b068be99fc1027125bc8e7546fcd8b2e2acb92da883a982e1e327ec64b669";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various Message Types for Mesh Data.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
