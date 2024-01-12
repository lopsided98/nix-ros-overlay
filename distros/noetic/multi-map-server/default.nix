
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, map-server, nav-msgs, python3Packages, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-multi-map-server";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/multi_map_server/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "2c5ce65b15604abc1c9786f7a777931762d636f6d8198a7db495c89fa7843f3a";
  };

  buildType = "catkin";
  buildInputs = [ catkin jsk-tools python3Packages.pyyaml pythonPackages.pillow rosmake ];
  propagatedBuildInputs = [ SDL_image map-server nav-msgs rosconsole roscpp rospy tf yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
