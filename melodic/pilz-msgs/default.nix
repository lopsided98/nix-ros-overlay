
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_msgs/0.4.3-0.tar.gz;
    sha256 = "e736bde66232ef6ac7f047c8931818bd1aeafd2af58db649d31886928c5571fa";
  };

  buildInputs = [ moveit-msgs message-generation ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
