
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-melodic-euslime";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/melodic/euslime/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2bda4669714d8380e33d1449eddb0a36247100d6b6288c207c42bec8233d1850";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roseus slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp meets SLIME'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
