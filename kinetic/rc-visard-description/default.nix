
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-description";
  version = "2.6.4-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_description/2.6.4-1.tar.gz;
    sha256 = "befc9c8d7b3b373ddc77a3fa9afaa73a9335516a331967060003c3aab5c1fd9f";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
