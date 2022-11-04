
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbridge-server, rosgraph, rospack, rostest }:
buildRosPackage {
  pname = "ros-melodic-roswww";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roswww-release/archive/release/melodic/roswww/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "eb82a974660ca3170ed06eebb74536569c53d935861cb6d44fc791f0657f8245";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  checkInputs = [ pythonPackages.selenium rostest ];
  propagatedBuildInputs = [ rosbridge-server rosgraph rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Feathery lightweight web server for ROS, that is based on <a href="http://www.tornadoweb.org/en/stable">Tornado</a> web server module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
