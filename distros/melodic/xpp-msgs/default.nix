
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-xpp-msgs";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_msgs/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "0835118248689817293f9399f3c3a7ece360dc9b6ac866ba80fa8c0c74554cd5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages used in the XPP framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
