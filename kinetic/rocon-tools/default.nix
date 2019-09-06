
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-uri, rocon-master-info, rocon-interactions, rocon-ebnf, rocon-python-redis, rocon-python-comms, catkin, rocon-console, rocon-python-utils, rocon-launch, rocon-python-wifi, rocon-semantic-version }:
buildRosPackage {
  pname = "ros-kinetic-rocon-tools";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_tools/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "1893069c0024177840270cd2a859df90583b28a58f8e6ce7ef39599121924d48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rocon-master-info rocon-interactions rocon-ebnf rocon-python-redis rocon-python-comms rocon-console rocon-python-utils rocon-semantic-version rocon-launch rocon-python-wifi rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
