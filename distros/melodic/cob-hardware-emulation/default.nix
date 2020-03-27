
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-hardware-emulation";
  version = "0.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_hardware_emulation/0.8.11-1.tar.gz";
    name = "0.8.11-1.tar.gz";
    sha256 = "25d5166a155de35edc8f3fb3ebe187320748329200626b42f440e2eadffed4e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
