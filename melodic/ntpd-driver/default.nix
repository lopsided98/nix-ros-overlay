
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, poco, cmake-modules, catkin, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-ntpd-driver";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/melodic/ntpd_driver/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "400a7dafabe870cfbda6a2c8238545f1891ce9f7acaab8746a3e64a1d2d98416";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-runtime poco cmake-modules roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs message-runtime poco cmake-modules roscpp message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
