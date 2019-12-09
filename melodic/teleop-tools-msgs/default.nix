
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, catkin, actionlib-msgs, message-generation, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-teleop-tools-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/teleop_tools_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "6a087baf64271603f7708582a440c2fe47f15f2da8be3996b115ad707ee05366";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib-msgs control-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
