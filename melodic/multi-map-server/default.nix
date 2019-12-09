
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, map-server, tf, pythonPackages, catkin, rosmake, libyamlcpp, roscpp, jsk-tools, rospy, nav-msgs, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-multi-map-server";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/multi_map_server/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "eda76ab35d2eab0ecd8663973eaa2269cad69e1b4b5bb1e0f3b30594fabd9c42";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.pyyaml SDL_image map-server pythonPackages.pillow tf rosmake libyamlcpp roscpp jsk-tools rospy nav-msgs rosconsole ];
  propagatedBuildInputs = [ SDL_image map-server tf libyamlcpp roscpp rospy nav-msgs rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
