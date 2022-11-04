
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-static-transform-mux";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/melodic/static_transform_mux/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "9b5bce13459bb33c3bcf4eb03f3c72e10e4b9b118f16a5a352ca9d42937e8343";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
