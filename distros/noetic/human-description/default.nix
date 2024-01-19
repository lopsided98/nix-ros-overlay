
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-human-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/human_description-release/archive/release/noetic/human_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "53c4b36c314d3d1e70e075cfae012ebc4aa69474ae724b87eb138f1c31e4046a";
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
