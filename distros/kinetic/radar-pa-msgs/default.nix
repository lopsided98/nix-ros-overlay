
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-radar-pa-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_radar-release/archive/release/kinetic/radar_pa_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "412daf9c66b60e145cb3fb17dc7f0d9cd4755ce3eabc1c68c71d3b9e3e46f2dd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut radar_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
