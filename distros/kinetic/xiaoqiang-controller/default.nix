
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, rospy, std-msgs, xiaoqiang-driver }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-controller";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_controller/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "ffb97cd951ccb490d46d778000482b59031d4c931cccdf611038fecbf9aa29aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime rospy std-msgs xiaoqiang-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang controller package, use terminal to move xiaoqiang around'';
    license = with lib.licenses; [ mit ];
  };
}
