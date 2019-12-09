
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, futaba-serial-servo, std-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-bringup";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/raspigibbon_bringup/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "cb1c8be78f0e5b9e8aa54a2a7f1d44e6e7160c125fa4b724727ff3be78d42208";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs std-msgs rospy futaba-serial-servo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_bringup package'';
    license = with lib.licenses; [ mit ];
  };
}
