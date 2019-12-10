
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-hardware-emulation";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_hardware_emulation/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "8646a2e4321a0d1ec4b879c791d201041573cfde46cde0a5066e4ece0ca3f44c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
