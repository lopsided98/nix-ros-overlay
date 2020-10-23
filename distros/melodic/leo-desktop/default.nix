
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-viz }:
buildRosPackage {
  pname = "ros-melodic-leo-desktop";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/melodic/leo_desktop/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "7f1c71c0b38c2df2a379978a68be3c06902e9321a0572a2c88f62c8fbae6b19d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
