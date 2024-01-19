
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, bullet, catkin, nav-msgs, roscpp, roslib, rospy, rostest, rosunit, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-map-server";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/map_server/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "00c00f4cfbd40068d58b4129d37d25fe4fb6cdec498c2442a38a3d09d9649a41";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslib rospy rostest rosunit ];
  propagatedBuildInputs = [ SDL SDL_image bullet nav-msgs roscpp tf2 yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
