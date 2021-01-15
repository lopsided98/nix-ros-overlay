
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-multi-map-server";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/multi_map_server/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "f9127edfedaaea59220d2bc5d0839636aa8390d984d836f300dad68a28132b81";
  };

  buildType = "catkin";
  buildInputs = [ jsk-tools pythonPackages.pillow pythonPackages.pyyaml rosmake ];
  propagatedBuildInputs = [ SDL_image libyamlcpp map-server nav-msgs rosconsole roscpp rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
