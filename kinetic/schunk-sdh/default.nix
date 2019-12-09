
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, libusb, cob-srvs, sensor-msgs, diagnostic-msgs, libntcan, dpkg, std-srvs, std-msgs, catkin, libpcan, roscpp, message-generation, control-msgs, trajectory-msgs, boost, actionlib, roslint, sdhlibrary-cpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-schunk-sdh";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_sdh/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "6b03b03bf6801eaaa3e88b4a94ad3b16a1b408cafe85326d57d72d5d58c696df";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs boost sensor-msgs diagnostic-msgs urdf libntcan dpkg std-msgs std-srvs actionlib libusb roslint sdhlibrary-cpp libpcan roscpp message-generation cob-srvs control-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs boost diagnostic-msgs urdf libntcan dpkg std-srvs std-msgs actionlib libusb sdhlibrary-cpp libpcan roscpp message-runtime cob-srvs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
