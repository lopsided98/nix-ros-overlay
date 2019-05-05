
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-cartesian-msgs";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/davetcoleman/cartesian_msgs-release/archive/release/lunar/cartesian_msgs/0.0.3-0.tar.gz;
    sha256 = "af847e20e8951dfbac31ba73a2ed425c1c36791cd0ac83a8e89a3e78b76f36ae";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stream cartesian commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
