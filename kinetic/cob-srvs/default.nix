
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-srvs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_srvs/0.6.10-0.tar.gz;
    sha256 = "4c388897cb94b45de50ab6917ab101b48509e70f276a7939c47e4892e9280355";
  };

  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
