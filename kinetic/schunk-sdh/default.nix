
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, diagnostic-msgs, libusb, libpcan, libntcan, boost, roslint, sdhlibrary-cpp, message-generation, message-runtime, dpkg, std-srvs, control-msgs, trajectory-msgs, catkin, urdf, std-msgs, roscpp, sensor-msgs, cob-srvs }:
buildRosPackage {
  pname = "ros-kinetic-schunk-sdh";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_sdh/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "44841f3f624457254242c1dee06038eab32bb07a98e5a16cc372fde68f25f874";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs boost roslint sdhlibrary-cpp control-msgs trajectory-msgs sensor-msgs cob-srvs libntcan message-generation urdf actionlib libusb std-msgs diagnostic-msgs roscpp libpcan dpkg ];
  propagatedBuildInputs = [ std-srvs libpcan boost sdhlibrary-cpp control-msgs trajectory-msgs sensor-msgs diagnostic-msgs cob-srvs urdf message-runtime actionlib std-msgs libntcan roscpp libusb dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
