
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, message-generation, message-runtime, poco, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntpd-driver";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/noetic/ntpd_driver/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "6b5438d9c2b27ba76eed22d9a797949977a55cdd149ede626b97697c9b596798";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules message-generation message-runtime poco roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
