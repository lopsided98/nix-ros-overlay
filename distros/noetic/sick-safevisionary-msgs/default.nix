
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-safevisionary-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safevisionary_ros1-release/archive/release/noetic/sick_safevisionary_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9c42d5d6954de484700832bf6bf3105c4880229d6564343a42879fe957f64bef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides the interface descriptions to communicate with a SICk Safevisionary Sensor over ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
