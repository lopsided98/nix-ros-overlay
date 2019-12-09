
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, rosflight-msgs, std-srvs, catkin, gazebo-msgs, roscpp, rospy, rosgraph-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-utils";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_utils/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0c02106323f3f2acf92d104a193f9698c81cf557e3c4962a944c242baf5e51a2";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs rosflight-msgs std-srvs gazebo-msgs roscpp rospy rosgraph-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs rosflight-msgs std-srvs gazebo-msgs roscpp rospy rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Supporting utilities for ROSflight packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
