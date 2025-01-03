
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, map-server, nav-msgs, python3Packages, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-multi-map-server";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/multi_map_server/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "1d3b33bf0e84f9abbd4b742e020d290116c6fbe504e148840818a6b764e50ef4";
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
