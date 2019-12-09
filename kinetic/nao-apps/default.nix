
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, naoqi-pose, diagnostic-msgs, geometry-msgs, dynamic-reconfigure, std-msgs, std-srvs, naoqi-driver-py, actionlib, catkin, naoqi-driver, naoqi-bridge-msgs, rospy, naoqi-bridge, humanoid-nav-msgs }:
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
  propagatedBuildInputs = [ naoqi-pose geometry-msgs diagnostic-msgs dynamic-reconfigure std-msgs std-srvs naoqi-driver-py actionlib naoqi-bridge naoqi-driver naoqi-bridge-msgs rospy humanoid-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Applications for NAO using the NAOqi API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
