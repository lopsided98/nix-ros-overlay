
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, bullet, catkin, libyamlcpp, nav-msgs, roscpp, rospy, rostest, rosunit, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-map-server";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/map_server/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "3733a2eb738c7e8d40222fd5c53eb934d4e38b0a6d9d6db5832afa95280fe08b";
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
