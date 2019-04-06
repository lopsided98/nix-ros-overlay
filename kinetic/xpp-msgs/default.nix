
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xpp-msgs";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_msgs/1.0.10-0.tar.gz;
    sha256 = "4940b1e34abbd298f6f6865aab13779b5702c6e59af1cfcbb881ea9e08100532";
  };

  propagatedBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''ROS messages used in the XPP framework.'';
    #license = lib.licenses.BSD;
  };
}
