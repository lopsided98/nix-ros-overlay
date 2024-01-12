
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, cob-srvs, control-msgs, diagnostic-msgs, dpkg, libntcan, libpcan, libusb1, message-generation, message-runtime, roscpp, roslint, sdhlibrary-cpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-schunk-sdh";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/noetic/schunk_sdh/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "49ae4d8f97483a7b2349425c265470e6a00b4b7ed6eb138db59de12a73ecd496";
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
