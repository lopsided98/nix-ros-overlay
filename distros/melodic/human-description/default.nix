
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-human-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/human_description-release/archive/release/melodic/human_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d689202e31482503b615ddd0ec2f7bbf764386d3d648b20b780a6583046e9da1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a parametric kinematic description of humans. 
        The files in this package are parsed and used by a variety of other 
        components, notably in the context of human-robot interaction.
        Most users will not interact directly with this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
