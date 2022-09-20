
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, cob-srvs, control-msgs, diagnostic-msgs, dpkg, libntcan, libpcan, libusb1, message-generation, message-runtime, roscpp, roslint, sdhlibrary-cpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-schunk-sdh";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_sdh/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "1e69dfad7195f759af1ad8b8a8774fcbf49950ad9c7d14c8025f7756c6b483b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  propagatedBuildInputs = [ actionlib boost cob-srvs control-msgs diagnostic-msgs dpkg libntcan libpcan libusb1 message-runtime roscpp sdhlibrary-cpp sensor-msgs std-msgs std-srvs trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
