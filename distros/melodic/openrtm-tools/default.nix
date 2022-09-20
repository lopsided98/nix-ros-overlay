
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openrtm-aist, openrtm-aist-python, rosbash, rostest, rtshell }:
buildRosPackage {
  pname = "ros-melodic-openrtm-tools";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/openrtm_tools/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "49f4aecff4ed1770796d07d505e850852fc4cd0a5d1b8e5879bbbfddc46539e1";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ openrtm-aist openrtm-aist-python rosbash rtshell ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The openrtm_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
