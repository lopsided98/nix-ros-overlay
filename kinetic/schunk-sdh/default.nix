
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, diagnostic-msgs, libusb, libpcan, libntcan, boost, roslint, message-generation, message-runtime, dpkg, std-srvs, control-msgs, trajectory-msgs, catkin, urdf, std-msgs, roscpp, sensor-msgs, cob-srvs }:
buildRosPackage {
  pname = "ros-kinetic-schunk-sdh";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_sdh/0.6.12-0.tar.gz;
    sha256 = "49c6ec8bd510dc0fb1514ee94d2e0f8b12a6b7489e31025028f9ca7362ba8bd3";
  };

  buildInputs = [ std-srvs boost roslint control-msgs trajectory-msgs sensor-msgs cob-srvs libntcan message-generation urdf actionlib libusb std-msgs diagnostic-msgs roscpp libpcan dpkg ];
  propagatedBuildInputs = [ std-srvs boost control-msgs trajectory-msgs sensor-msgs cob-srvs libntcan urdf actionlib message-runtime libusb std-msgs diagnostic-msgs roscpp libpcan dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
