
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, naoqi-libqicore, sensor-msgs, catkin, roscpp, diagnostic-updater, rospy, std-msgs, diagnostic-msgs, tf, naoqi-libqi, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-dcm-driver";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/ros-naoqi/naoqi_dcm_driver-release/archive/release/kinetic/naoqi_dcm_driver/0.0.3-0.tar.gz;
    sha256 = "13405c7e5c550b8aadbf595d9c5694a4368a28185063264e3d5bf2e559502cba";
  };

  buildInputs = [ controller-manager hardware-interface naoqi-libqicore sensor-msgs roscpp diagnostic-updater rospy std-msgs diagnostic-msgs tf naoqi-libqi geometry-msgs ];
  propagatedBuildInputs = [ controller-manager hardware-interface naoqi-libqicore sensor-msgs roscpp rospy std-msgs tf naoqi-libqi geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing the hardware interface to connect to Nao, Romeo, or Pepper robots.'';
    #license = lib.licenses.BSD;
  };
}
