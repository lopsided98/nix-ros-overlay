
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, bullet, SDL_image, libyamlcpp, catkin, tf2, rostest, nav-msgs, rospy, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-map-server";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/map_server/1.15.2-0.tar.gz;
    sha256 = "09d54ffb09f5c5c488f01b7fb50e850454a78f92291d0f5a702cf482877515e9";
  };

  buildInputs = [ tf2 nav-msgs bullet SDL_image SDL libyamlcpp roscpp ];
  checkInputs = [ rostest rosunit rospy ];
  propagatedBuildInputs = [ tf2 nav-msgs bullet SDL_image SDL libyamlcpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''map_server provides the <tt>map_server</tt> ROS <a href="http://www.ros.org/wiki/Nodes">Node</a>, which offers map data as a ROS <a href="http://www.ros.org/wiki/Services">Service</a>. It also provides the <tt>map_saver</tt> command-line utility, which allows dynamically generated maps to be saved to file.'';
    #license = lib.licenses.BSD;
  };
}
