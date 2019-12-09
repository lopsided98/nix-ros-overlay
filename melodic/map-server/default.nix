
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, SDL, catkin, tf2, rosunit, libyamlcpp, roscpp, rospy, bullet, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-map-server";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/map_server/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "0fab74d642a661550427279f82a29ea29b72c5a65d2d49155fd7f7ec1f1ddde0";
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
