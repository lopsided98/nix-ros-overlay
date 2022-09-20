
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-novatel-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/novatel_span_driver-release/archive/release/melodic/novatel_msgs/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "a72561b3f85654b4e209dc7ac5738010ee49bb976023b1a014f4e345a2206797";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages which represent raw Novatel SPAN data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
