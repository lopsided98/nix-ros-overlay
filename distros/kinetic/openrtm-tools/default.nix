
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openrtm-aist, openrtm-aist-python, rosbash, rostest, rtshell }:
buildRosPackage {
  pname = "ros-kinetic-openrtm-tools";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/openrtm_tools/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "2357067dfe93be5ed3bdadd4b28e08f39aa6bb5002b7c3aa75090e9e54cb6803";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ openrtm-aist openrtm-aist-python rosbash rtshell ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The openrtm_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
