
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-noetic-euslime";
  version = "1.1.4-r2";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/noetic/euslime/1.1.4-2.tar.gz";
    name = "1.1.4-2.tar.gz";
    sha256 = "07dcb0c097b61eef4a4a614ba24ea40ef5efff4eae965a6299719e8f3862b83e";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  propagatedBuildInputs = [ roseus slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp meets SLIME'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
