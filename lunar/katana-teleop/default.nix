
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, katana-msgs, sensor-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-katana-teleop";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_teleop/1.1.2-0.tar.gz;
    sha256 = "a33d1929cacbb5d7f94d2f3b9c832dfae7edcc209a5cb0081ffea95c0e494357";
  };

  buildInputs = [ control-msgs katana-msgs sensor-msgs actionlib roscpp ];
  propagatedBuildInputs = [ control-msgs katana-msgs sensor-msgs actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides tele-operation nodes to control the Neuronics Katana 450 arm via keyboard commands or with a playstation 3 controller.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
