
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-novatel-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/novatel_span_driver-release/archive/release/melodic/novatel_msgs/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "a72561b3f85654b4e209dc7ac5738010ee49bb976023b1a014f4e345a2206797";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs message-generation nav-msgs std-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages which represent raw Novatel SPAN data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
