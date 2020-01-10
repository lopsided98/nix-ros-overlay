
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-hardware-emulation";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_hardware_emulation/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "7bfad46d1eddb0aa700a6eed9656621f8282d008375b20939ec3b4aa1e917f9b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
