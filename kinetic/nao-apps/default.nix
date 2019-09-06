
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, catkin, naoqi-pose, naoqi-bridge-msgs, naoqi-bridge, rospy, naoqi-driver-py, diagnostic-msgs, actionlib, std-msgs, naoqi-driver, dynamic-reconfigure, humanoid-nav-msgs, geometry-msgs }:
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
  propagatedBuildInputs = [ std-srvs naoqi-pose rospy naoqi-bridge-msgs naoqi-bridge naoqi-driver-py std-msgs actionlib dynamic-reconfigure diagnostic-msgs naoqi-driver humanoid-nav-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Applications for NAO using the NAOqi API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
