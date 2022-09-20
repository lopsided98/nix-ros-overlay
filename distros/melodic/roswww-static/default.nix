
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-roswww-static";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/roswww_static/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "d15218175c9d6ccaac2489434e083d4cac54ff6403af7b69e76560f3a9712cbd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Static web pages for ROS packages'';
    license = with lib.licenses; [ mit ];
  };
}
