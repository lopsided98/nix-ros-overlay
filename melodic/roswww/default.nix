
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, phantomjs, catkin, pythonPackages, rosbridge-server, rostest, rosgraph }:
buildRosPackage {
  pname = "ros-melodic-roswww";
  version = "0.1.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/roswww-release/archive/release/melodic/roswww/0.1.12-0.tar.gz;
    sha256 = "108f7156256acfd659a62d57362a1b92e59114962829148cd451b032d450d3f7";
  };

  buildInputs = [ pythonPackages.catkin-pkg ];
  checkInputs = [ rostest phantomjs pythonPackages.selenium ];
  propagatedBuildInputs = [ rospack rosbridge-server rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
