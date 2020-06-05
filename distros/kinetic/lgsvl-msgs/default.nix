
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lgsvl-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/lgsvl_msgs-release/archive/release/kinetic/lgsvl_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "d9698108249845d93e3354402e02db811b80324ec224e5bc2eedcabf149a3968";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''The lgsvl_msgs package for ground truth data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
