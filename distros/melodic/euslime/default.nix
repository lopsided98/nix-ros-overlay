
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-melodic-euslime";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/melodic/euslime/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "39ee14b35eccdb4b3024938289d3c5c4b9b23a356314f584500324aaf2f0a0cd";
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
