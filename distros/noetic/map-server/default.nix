
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, bullet, catkin, libyamlcpp, nav-msgs, roscpp, roslib, rospy, rostest, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-noetic-map-server";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/map_server/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "2aba872bfa613a6f0b91cfe7005e168c82919e3d38c6c6330f8bab2c2b028b82";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslib rospy rostest rosunit ];
  propagatedBuildInputs = [ SDL SDL_image bullet libyamlcpp nav-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
