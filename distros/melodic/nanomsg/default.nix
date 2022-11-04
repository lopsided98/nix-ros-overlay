
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-nanomsg";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/nanomsg-release/archive/release/melodic/nanomsg/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "0b9f6215f091598eac4c7c958693a5b4c8cb09838e18a5b18bc9feb7bf97dfff";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nanomsg package'';
    license = with lib.licenses; [ mit ];
  };
}
