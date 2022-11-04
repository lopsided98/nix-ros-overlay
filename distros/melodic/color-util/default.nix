
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-color-util";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/color_util/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9a1ea5d2c51cbc78a4e9eddc30a0385eb31ca834638c3ad6a3423057f1adf27c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An almost dependency-less library for converting between color spaces'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
