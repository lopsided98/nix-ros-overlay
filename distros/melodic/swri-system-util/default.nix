
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-system-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_system_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "7ff8cdc3bf6831e6ed4988ca42b12e0578661504f53f4a49f4b4df3fb875879a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
