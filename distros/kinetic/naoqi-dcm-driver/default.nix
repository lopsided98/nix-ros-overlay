
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-msgs, diagnostic-updater, geometry-msgs, hardware-interface, naoqi-libqi, naoqi-libqicore, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-dcm-driver";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_dcm_driver-release/archive/release/kinetic/naoqi_dcm_driver/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "13405c7e5c550b8aadbf595d9c5694a4368a28185063264e3d5bf2e559502cba";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs diagnostic-updater ];
  propagatedBuildInputs = [ controller-manager geometry-msgs hardware-interface naoqi-libqi naoqi-libqicore roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing the hardware interface to connect to Nao, Romeo, or Pepper robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
