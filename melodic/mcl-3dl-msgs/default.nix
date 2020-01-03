
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mcl-3dl-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/melodic/mcl_3dl_msgs/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "d946568df0327384e9e5e2304964454753889b4f703096a17d6d94795e64ce8a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
