
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, setserial, roscpp, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-driver";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_driver/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "7779afda0b0ea51fa24d30a943a50ed1b20e6227a79bb9d162e8f5f51affba40";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf setserial roscpp rospy nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf setserial roscpp rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The xiaoqiang driver package'';
    license = with lib.licenses; [ mit ];
  };
}
