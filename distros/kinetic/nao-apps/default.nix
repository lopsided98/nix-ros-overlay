
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, humanoid-nav-msgs, naoqi-bridge, naoqi-bridge-msgs, naoqi-driver, naoqi-driver-py, naoqi-pose, rospy, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nao-apps";
  version = "0.5.15";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_apps/0.5.15-0.tar.gz";
    name = "0.5.15-0.tar.gz";
    sha256 = "6f2578725ddfbf17c8124bc5e7f85099e934806e63cef3a416eedec6667764f2";
  };

  buildType = "catkin";
  checkInputs = [ trajectory-msgs ];
  propagatedBuildInputs = [ actionlib diagnostic-msgs dynamic-reconfigure geometry-msgs humanoid-nav-msgs naoqi-bridge naoqi-bridge-msgs naoqi-driver naoqi-driver-py naoqi-pose rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Applications for NAO using the NAOqi API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
