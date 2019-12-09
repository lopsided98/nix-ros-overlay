
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, message-runtime, catkin, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_msgs/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "937bb1f1603f5e16e9508ac7f4413011590f25cf452695da17e6687588d7a1c1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation moveit-msgs ];
  propagatedBuildInputs = [ message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
