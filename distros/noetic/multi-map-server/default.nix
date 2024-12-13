
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, map-server, nav-msgs, python3Packages, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-multi-map-server";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/multi_map_server/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "1db66e2ba61e0e65a5235f4d1030a99e4310ac87205efbb92409c1158abf41fa";
  };

  buildType = "catkin";
  buildInputs = [ catkin jsk-tools python3Packages.pyyaml pythonPackages.pillow rosmake ];
  propagatedBuildInputs = [ SDL_image map-server nav-msgs rosconsole roscpp rospy tf yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "multi_map_server provides the";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
