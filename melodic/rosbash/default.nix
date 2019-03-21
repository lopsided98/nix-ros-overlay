
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosbash";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/rosbash/1.14.6-0.tar.gz;
    sha256 = "8aa3f8849a9e6f158a85db00420299e5f3fc31222ccaf53dc025904548535bcb";
  };

  propagatedBuildInputs = [ rospack catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    #license = lib.licenses.BSD;
  };
}
