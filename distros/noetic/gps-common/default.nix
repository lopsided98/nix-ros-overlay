
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, message-generation, message-runtime, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-gps-common";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gps_common/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "a1b84a930406a1c806565f9360dd80980f47af90943d0bb3f6e5d166662eed8f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-filters message-runtime nav-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
