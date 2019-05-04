
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, bullet, SDL_image, libyamlcpp, catkin, tf2, rostest, nav-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-map-server";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/map_server/1.14.4-0.tar.gz;
    sha256 = "a5bed8cd6108ec0b57ec9cfb9264695e55978cb946643aa02858b5e99a1b0dca";
  };

  buildInputs = [ SDL bullet SDL_image libyamlcpp tf2 nav-msgs roscpp ];
  checkInputs = [ rostest rosunit rospy ];
  propagatedBuildInputs = [ SDL bullet SDL_image libyamlcpp tf2 nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
