
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf2 }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "ac569503199fd1f14ca49215a2aa7faeb478001059ce641fac1070c7a18367e7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ teleop-twist-keyboard tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
