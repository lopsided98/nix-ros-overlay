
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controllers-msgs, pr2-msgs, roseus }:
buildRosPackage {
  pname = "ros-melodic-jsk-calibration";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_calibration/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "9fc9c4fecc5b352e65686aef83e881b543eda595b9d27ec8e17bcc368261ca5d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-msgs roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_calibration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
