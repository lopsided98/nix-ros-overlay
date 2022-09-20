
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/melodic/pilz_msgs/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "df5cbc23f0122a008312aac5df69b4a16aac322dee0758d7b4c8b6b4e304c538";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
