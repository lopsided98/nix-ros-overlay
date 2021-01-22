
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, phantomjs, pythonPackages, rosbridge-server, rosgraph, rospack, rostest }:
buildRosPackage {
  pname = "ros-kinetic-roswww";
  version = "0.1.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roswww-release/archive/release/kinetic/roswww/0.1.12-0.tar.gz";
    name = "0.1.12-0.tar.gz";
    sha256 = "3e87f6079a79ea103ff5ab7dda875830a5cbc6fbc86d72eef0aa591849d04727";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  checkInputs = [ phantomjs pythonPackages.selenium rostest ];
  propagatedBuildInputs = [ rosbridge-server rosgraph rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
