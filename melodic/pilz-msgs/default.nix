
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.4.4-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_msgs/0.4.4-1.tar.gz;
    sha256 = "bc85c9fdcdea489b3cc47987acad090e9139ca791750b58506c4e1b9868d6e91";
  };

  buildInputs = [ moveit-msgs message-generation ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
