
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, python3Packages, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-multi-map-server";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/multi_map_server/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "e29c65c0ecd6a1199c1f247b056d171b575c49225866c48f504a2c06b6735d1c";
  };

  buildType = "catkin";
  buildInputs = [ jsk-tools python3Packages.pyyaml pythonPackages.pillow rosmake ];
  propagatedBuildInputs = [ SDL_image libyamlcpp map-server nav-msgs rosconsole roscpp rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
