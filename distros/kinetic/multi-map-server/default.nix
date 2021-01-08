
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-multi-map-server";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/multi_map_server/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "e92180a70217be12bbb15e4f6827dd3abff591e68c41a3426d9038b21fdf8e73";
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
