
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, elfutils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-backward-ros";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/pal-gbp/backward_ros-release/archive/release/melodic/backward_ros/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "3cec255db3ff1af9bfc80b31ca88a9be50f11d663d9213edf457b0a7ed7eb967";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ elfutils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
