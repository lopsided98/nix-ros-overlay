
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "badd44a2c96c661235de0304340dabb8f3e552489c7ae695d94edab2090baaf8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
