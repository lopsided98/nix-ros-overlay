
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controllers-msgs, pr2-msgs, roseus }:
buildRosPackage {
  pname = "ros-noetic-jsk-calibration";
  version = "0.1.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_calibration/0.1.17-2.tar.gz";
    name = "0.1.17-2.tar.gz";
    sha256 = "626e831e1d63d1f3c19fd56d14e12fc664246d1b68635a45bee293af7f2204dc";
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
