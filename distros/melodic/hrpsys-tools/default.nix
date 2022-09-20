
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hrpsys, openrtm-tools, rostest }:
buildRosPackage {
  pname = "ros-melodic-hrpsys-tools";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/hrpsys_tools/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "022b471d0ff125eb3e55e527a04b71984645c5fcf74185e834f640356461a8fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ hrpsys openrtm-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hrpsys_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
