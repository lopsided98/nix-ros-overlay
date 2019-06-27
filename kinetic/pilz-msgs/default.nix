
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pilz-msgs";
  version = "0.3.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_msgs/0.3.7-0.tar.gz;
    sha256 = "8a7a8b5cbe3a61c054f012cb65a019ebc7b46c2e93e6ec2594349f4b007f463f";
  };

  buildInputs = [ moveit-msgs message-generation ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
