
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, diagnostic-msgs, geometry-msgs, controller-manager, hardware-interface, std-msgs, tf, catkin, naoqi-libqi, naoqi-libqicore, roscpp, rospy, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-dcm-driver";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_dcm_driver-release/archive/release/kinetic/naoqi_dcm_driver/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "13405c7e5c550b8aadbf595d9c5694a4368a28185063264e3d5bf2e559502cba";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs diagnostic-msgs controller-manager hardware-interface std-msgs tf roscpp naoqi-libqi naoqi-libqicore diagnostic-updater rospy ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs controller-manager hardware-interface std-msgs tf naoqi-libqi naoqi-libqicore roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing the hardware interface to connect to Nao, Romeo, or Pepper robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
