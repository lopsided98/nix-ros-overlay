
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controllers-msgs, pr2-msgs, roseus }:
buildRosPackage {
  pname = "ros-noetic-jsk-calibration";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/jsk_calibration/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "05ec3675fb9e5c64becb910570b4c55c9a8e9df6ea46c35f8a17e6d06af8eb46";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-msgs roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The jsk_calibration package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
