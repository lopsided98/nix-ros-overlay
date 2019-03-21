
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, bullet, SDL_image, libyamlcpp, catkin, rostest, tf2, nav-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-map-server";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/map_server/1.16.2-0.tar.gz;
    sha256 = "bfa8523b9c697f97956d24e89857dcccc5b4cc09844b42adb0ce066c6df28972";
  };

  checkInputs = [ rostest rosunit rospy ];
  propagatedBuildInputs = [ tf2 nav-msgs bullet SDL_image SDL libyamlcpp roscpp ];
  nativeBuildInputs = [ tf2 nav-msgs bullet SDL_image SDL libyamlcpp catkin roscpp ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    #license = lib.licenses.BSD;
  };
}
