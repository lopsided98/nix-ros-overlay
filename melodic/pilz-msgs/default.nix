
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pilz-msgs";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_msgs/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "b7a99bbac5d841f029097f50809219cf94f5282565188485c51c907cf33fb469";
  };

  buildType = "catkin";
  buildInputs = [ moveit-msgs message-generation ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
