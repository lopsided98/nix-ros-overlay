
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controllers-msgs, pr2-msgs, roseus }:
buildRosPackage {
  pname = "ros-noetic-jsk-calibration";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_calibration/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "5a0517ce201c7c293df300b22f12c1d265253dfd73f93db9f25db33c148a713a";
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
