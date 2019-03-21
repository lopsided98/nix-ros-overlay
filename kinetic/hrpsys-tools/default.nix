
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hrpsys, rostest, openrtm-tools, catkin }:
buildRosPackage {
  pname = "ros-kinetic-hrpsys-tools";
  version = "1.4.2";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/hrpsys_tools/1.4.2-0.tar.gz;
    sha256 = "b2732c77bfafcf29c26e9a2611de2c7af9ae1b845b9877be9645a1d6055d1327";
  };

  propagatedBuildInputs = [ hrpsys openrtm-tools ];
  nativeBuildInputs = [ hrpsys rostest catkin ];

  meta = {
    description = ''The hrpsys_tools package'';
    #license = lib.licenses.BSD;
  };
}
