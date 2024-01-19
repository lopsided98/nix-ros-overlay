
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosbridge-server, rosgraph, rospack, rostest }:
buildRosPackage {
  pname = "ros-noetic-roswww";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roswww-release/archive/release/noetic/roswww/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "21b7ab479ab18b0a1fb19faee08f5391785ffd27fd60bf15dc9d117b8d755b9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  checkInputs = [ python3Packages.selenium rostest ];
  propagatedBuildInputs = [ rosbridge-server rosgraph rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
