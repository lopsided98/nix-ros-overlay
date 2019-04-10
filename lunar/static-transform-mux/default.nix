
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-msgs, rospy }:
buildRosPackage {
  pname = "ros-lunar-static-transform-mux";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/peci1/static_transform_mux-release/archive/release/lunar/static_transform_mux/1.1.0-0.tar.gz;
    sha256 = "4b360ae592b3fb65aa4a673232fd529cc014b50ef8e713da8cc5a6294bf69b44";
  };

  propagatedBuildInputs = [ tf2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    #license = lib.licenses.BSD;
  };
}
