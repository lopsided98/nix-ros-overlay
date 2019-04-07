
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, geometry-msgs, sensor-msgs, catkin, rosgraph-msgs, rospy, roscpp, gazebo-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-utils";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_utils/1.0.0-1.tar.gz;
    sha256 = "0c02106323f3f2acf92d104a193f9698c81cf557e3c4962a944c242baf5e51a2";
  };

  buildInputs = [ rosgraph-msgs std-srvs rospy sensor-msgs roscpp geometry-msgs gazebo-msgs rosflight-msgs ];
  propagatedBuildInputs = [ rosgraph-msgs std-srvs rospy sensor-msgs roscpp geometry-msgs gazebo-msgs rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    #license = lib.licenses.BSD;
  };
}
