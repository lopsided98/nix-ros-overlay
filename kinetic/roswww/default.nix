
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, catkin, pythonPackages, rosbridge-server, rostest, rosgraph }:
buildRosPackage {
  pname = "ros-kinetic-roswww";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roswww-release/archive/release/kinetic/roswww/0.1.10-0.tar.gz;
    sha256 = "2f161d6a711b33a04c392b79f184998e979c1aac461f92d085d25efddea2afcd";
  };

  checkInputs = [ rostest pythonPackages.requests ];
  propagatedBuildInputs = [ rospack rosbridge-server rosgraph ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    #license = lib.licenses.BSD;
  };
}
