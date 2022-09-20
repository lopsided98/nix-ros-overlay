
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-hardware-interface";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/hardware_interface/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "16bf376a04d3fb720ae204b3ef0b2ef7be36ca92bef987b3644caf88dffaca1a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware Interface base class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
