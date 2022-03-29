
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-noetic-euslime";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/noetic/euslime/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "0baa5371b2df2c86936dc54491dcf33357a9bd0c3e6eebc6ff681c476fa9c149";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv ];
  propagatedBuildInputs = [ roseus slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp meets SLIME'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
