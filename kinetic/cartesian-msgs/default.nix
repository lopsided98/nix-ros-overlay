
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cartesian-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/davetcoleman/cartesian_msgs-release/archive/release/kinetic/cartesian_msgs/0.0.3-1.tar.gz;
    sha256 = "3c805a4b05bde27a645d82fa6e9773c5bb442188928b67b1daa0939497e9d568";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stream cartesian commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
