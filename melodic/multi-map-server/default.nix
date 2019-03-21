
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, rosconsole, SDL_image, libyamlcpp, catkin, pythonPackages, roscpp, rosmake, nav-msgs, jsk-tools, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-multi-map-server";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/melodic/multi_map_server/2.2.10-0.tar.gz;
    sha256 = "eda76ab35d2eab0ecd8663973eaa2269cad69e1b4b5bb1e0f3b30594fabd9c42";
  };

  propagatedBuildInputs = [ map-server nav-msgs rosconsole SDL_image rospy libyamlcpp tf roscpp ];
  nativeBuildInputs = [ map-server rosconsole SDL_image libyamlcpp catkin pythonPackages.pyyaml rosmake roscpp nav-msgs jsk-tools rospy pythonPackages.pillow tf ];

  meta = {
    description = ''multi_map_server provides the'';
    #license = lib.licenses.BSD;
  };
}
