
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-xpp-msgs";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp_msgs/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "cfb69281c6c51f4ca2bbdc100148ff2cfc10a19962ecae957dd66968c7837317";
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
