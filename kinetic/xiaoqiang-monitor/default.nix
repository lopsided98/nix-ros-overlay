
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xiaoqiang-msgs, xiaoqiang-driver, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-monitor";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_monitor/0.0.12-0.tar.gz;
    sha256 = "1589626fcadd210d2105ef7c7d8382b9bc826c173200c034f640949727550ee2";
  };

  buildInputs = [ std-msgs xiaoqiang-msgs xiaoqiang-driver rospy ];
  propagatedBuildInputs = [ std-msgs xiaoqiang-msgs xiaoqiang-driver rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''monitor the status of xiaoqiang'';
    #license = lib.licenses.MIT;
  };
}
