
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-semantic-version, rocon-python-comms, rocon-console, rocon-ebnf, rocon-python-wifi, rocon-python-redis, rocon-interactions, rocon-launch, catkin, rocon-python-utils, rocon-master-info, rocon-uri }:
buildRosPackage {
  pname = "ros-kinetic-rocon-tools";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_tools/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "1893069c0024177840270cd2a859df90583b28a58f8e6ce7ef39599121924d48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-semantic-version rocon-console rocon-python-comms rocon-ebnf rocon-python-wifi rocon-python-redis rocon-interactions rocon-launch rocon-python-utils rocon-master-info rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
