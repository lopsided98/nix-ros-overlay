
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-xpp-msgs";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_msgs/1.0.9-0.tar.gz;
    sha256 = "f3bf650f00f460d8a0897815d3a9b1afdcb86794055a36d691c13a5afb230c71";
  };

  propagatedBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''ROS messages used in the XPP framework.'';
    #license = lib.licenses.BSD;
  };
}
