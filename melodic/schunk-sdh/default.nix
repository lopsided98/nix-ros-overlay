
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, diagnostic-msgs, libusb, libpcan, libntcan, boost, roslint, sdhlibrary-cpp, message-generation, message-runtime, dpkg, std-srvs, control-msgs, trajectory-msgs, catkin, urdf, std-msgs, roscpp, sensor-msgs, cob-srvs }:
buildRosPackage {
  pname = "ros-melodic-schunk-sdh";
  version = "0.6.13-r2";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_sdh/0.6.13-2.tar.gz;
    sha256 = "f6010706d4c01738c29727fda87e6ec606db39057bdffd58473af3d4629bb3e5";
  };

  buildInputs = [ std-srvs boost roslint sdhlibrary-cpp control-msgs trajectory-msgs sensor-msgs cob-srvs libntcan message-generation urdf actionlib libusb std-msgs diagnostic-msgs roscpp libpcan dpkg ];
  propagatedBuildInputs = [ std-srvs boost sdhlibrary-cpp control-msgs trajectory-msgs sensor-msgs cob-srvs libntcan urdf actionlib message-runtime libusb std-msgs diagnostic-msgs roscpp libpcan dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an interface for operating the schunk dexterous hand (SDH), including the tactile sensors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
