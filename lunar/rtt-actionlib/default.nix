
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-ros, actionlib-msgs, catkin, rtt-rosclock, rtt-actionlib-msgs, actionlib, rtt-roscomm, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rtt-actionlib";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_actionlib/2.9.2-1.tar.gz;
    sha256 = "471148679e8802e021c4e4db0f3d5efbbc62d95590f6ff297b415fb66f48acf1";
  };

  buildInputs = [ rtt-ros actionlib-msgs rtt-rosclock rtt-actionlib-msgs actionlib rtt-roscomm roscpp ];
  propagatedBuildInputs = [ rtt-ros actionlib-msgs rtt-rosclock rtt-actionlib-msgs actionlib rtt-roscomm roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_actionlib package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
