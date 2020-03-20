
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, bullet, catkin, libyamlcpp, nav-msgs, roscpp, rospy, rostest, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-melodic-map-server";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/map_server/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "d43cb497847c144cf794e82f096bb1dad4f858c8752d0325278f31fd0a861548";
  };

  buildType = "catkin";
  checkInputs = [ rospy rostest rosunit ];
  propagatedBuildInputs = [ SDL SDL_image bullet libyamlcpp nav-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
