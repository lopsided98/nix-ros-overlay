
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-md49-serialport";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/Scheik/md49_base_controller-release/archive/release/melodic/md49_serialport/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "fa9045a3f94fdde980a537997f23ae3d74accc8f0019fa18172c007862865408";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_serialport package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
