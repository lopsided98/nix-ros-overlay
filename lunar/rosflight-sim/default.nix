
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, gazebo-plugins, rosflight-firmware, eigen, roscpp, geometry-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosflight-sim";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/lunar/rosflight_sim/1.0.0-0.tar.gz;
    sha256 = "0e85b3809437ea11e02c2df7351c7f50917ffd883dc34626eaadb1e0f3291353";
  };

  buildInputs = [ gazebo-ros rosflight-firmware eigen rosflight-msgs gazeboSimulator.gazebo roscpp geometry-msgs gazebo-plugins ];
  propagatedBuildInputs = [ gazebo-ros rosflight-firmware eigen rosflight-msgs gazeboSimulator.gazebo roscpp geometry-msgs gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    #license = lib.licenses.BSD;
  };
}
