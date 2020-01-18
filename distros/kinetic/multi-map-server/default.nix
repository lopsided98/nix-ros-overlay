
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-multi-map-server";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/multi_map_server/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "b205d2c0a42e4f80b89c13b61522efcce0929adb7d86a87558bdb19895364d38";
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
