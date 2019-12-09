
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, SDL, catkin, tf2, rosunit, libyamlcpp, roscpp, rospy, bullet, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-map-server";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/map_server/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "e5fb03609a0fdc9f72eda300b47fc2acc5497c3a96d5524667f9154d9bfd6cd7";
  };

  buildType = "catkin";
  buildInputs = [ SDL_image SDL tf2 libyamlcpp roscpp bullet nav-msgs ];
  checkInputs = [ rospy rostest rosunit ];
  propagatedBuildInputs = [ SDL_image SDL roscpp libyamlcpp tf2 bullet nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
