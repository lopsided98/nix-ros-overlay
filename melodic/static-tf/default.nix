
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-static-tf";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/wu-robotics/static_tf_release/archive/release/melodic/static_tf/0.0.2-0.tar.gz;
    sha256 = "0c372214894f09c32cf9f0e8364ee57db00a1a906ba997b8767c027bf835e1f8";
  };

  propagatedBuildInputs = [ tf tf2-ros geometry-msgs rospy ];
  nativeBuildInputs = [ catkin rospy geometry-msgs tf tf2-ros ];

  meta = {
    description = ''The static_tf package'';
    #license = lib.licenses.TODO;
  };
}
