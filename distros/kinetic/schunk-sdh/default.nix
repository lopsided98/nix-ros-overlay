
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, cob-srvs, control-msgs, diagnostic-msgs, dpkg, libntcan, libpcan, libusb, message-generation, message-runtime, roscpp, roslint, sdhlibrary-cpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-kinetic-schunk-sdh";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_sdh/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "6b03b03bf6801eaaa3e88b4a94ad3b16a1b408cafe85326d57d72d5d58c696df";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  propagatedBuildInputs = [ actionlib boost cob-srvs control-msgs diagnostic-msgs dpkg libntcan libpcan libusb message-runtime roscpp sdhlibrary-cpp sensor-msgs std-msgs std-srvs trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
